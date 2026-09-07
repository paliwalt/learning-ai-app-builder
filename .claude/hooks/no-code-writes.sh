#!/usr/bin/env bash
# PreToolUse guard for Bash.
# HARD RULE: Claude never writes code into this repo, by any means.
# Blocks shell commands that would create or modify files other than
# .md / .txt / .claude/*, and blocks package installs / scaffolders.
INPUT=$(cat)
if command -v jq >/dev/null 2>&1; then
  CMD=$(printf '%s' "$INPUT" | jq -r '.tool_input.command // empty')
else
  CMD=$(printf '%s' "$INPUT" | sed -n 's/.*"command"[[:space:]]*:[[:space:]]*"\(\(\\.\|[^"\\]\)*\)".*/\1/p' | head -1)
  CMD=$(printf '%s' "$CMD" | sed 's/\\"/"/g; s/\\n/\n/g')
fi
[ -z "$CMD" ] && exit 0

block() {
  echo "BLOCKED by learning-boilerplate HARD RULE ($1). Claude never writes code, installs packages, or scaffolds projects in this repo. Only .md/.txt and .claude/ files may be written. Give the Learner the command or code as a copy-paste block and ask them to run it in their own terminal, then push." >&2
  exit 2
}

allowed_path() {
  case "$1" in
    ""|-|/dev/null|/dev/stdout|/dev/stderr|"&1"|"&2"|*.md|*.txt|*/.claude/*|.claude/*|/tmp/*|*/scratchpad/*) return 0 ;;
    *) return 1 ;;
  esac
}

# 1. Redirects and tee: every target must be an allowed path.
#    Strip fd-duplication forms first (2>&1, >&2, 1>&2).
STRIPPED=$(printf '%s' "$CMD" | sed -E 's/[0-9]*>&[0-9]//g')
printf '%s' "$STRIPPED" | grep -oE "(^|[^<>])>{1,2}[[:space:]]*('[^']*'|\"[^\"]*\"|[^[:space:];&|)<>]+)" | sed -E "s/^[^>]*>{1,2}[[:space:]]*//; s/^['\"]+//; s/['\"]+\$//" | while IFS= read -r T; do
  allowed_path "$T" || block "redirect into $T"
done || exit 2
for T in $(printf '%s' "$CMD" | grep -oE '(^|[;&|][[:space:]]*|[[:space:]])tee([[:space:]]+-[a-z]+)*[[:space:]]+[^[:space:];&|)]+' | sed -E "s/.*tee([[:space:]]+-[a-z]+)*[[:space:]]+//; s/^['\"]+//; s/['\"]+\$//"); do
  allowed_path "$T" || block "tee into $T"
done

# 2. In-place editors and file creators: every path-looking token must be allowed.
if printf '%s' "$CMD" | grep -qE '(^|[;&|][[:space:]]*|[[:space:]])(sed|perl)[[:space:]]+(-[a-zA-Z]*i|--in-place)|(^|[;&|][[:space:]]*|[[:space:]])(touch|truncate|cp|mv|install|dd|ln|rsync|unzip|tar)[[:space:]]'; then
  FOUND_ALLOWED=0
  for T in $(printf '%s' "$CMD" | grep -oE '[A-Za-z0-9_./~-]+\.[A-Za-z0-9]+' ); do
    case "$T" in *.md|*.txt) FOUND_ALLOWED=1 ;; esac
    allowed_path "$T" || block "in-place write or file copy touching $T"
  done
  if printf '%s' "$CMD" | grep -qE '(^|[;&|][[:space:]]*|[[:space:]])(touch|cp|mv|install|dd|ln|rsync|unzip|tar)[[:space:]]' && [ "$FOUND_ALLOWED" = 0 ]; then
    block "file create/copy/move with no .md/.txt target"
  fi
fi

# 3. Scripted file writes (python, node, ruby, etc.).
Q="\\\\?['\"]"
if printf '%s' "$CMD" | grep -qE "open\([^)]*${Q}[wax][bt+]*${Q}|writeFile(Sync)?\(|write_text\(|write_bytes\(|appendFile(Sync)?\(|File\.write|fs\.(write|append|copy|rename)|shutil\.(copy|move)|os\.rename\("; then
  block "scripted file write"
fi

# 4. Package managers and project scaffolders.
if printf '%s' "$CMD" | grep -qE '(^|[;&|][[:space:]]*|[[:space:]])(npm[[:space:]]+(install|i|add|init|create|uninstall|un|remove|rm|update|up|link|pkg)|npx[[:space:]]+(create-|.*[[:space:]]init([[:space:]]|$))|pnpm[[:space:]]+(add|install|i|create|init|remove|rm|update|up|dlx[[:space:]]+create)|yarn([[:space:]]+(add|init|create|install|remove|up|upgrade)|[[:space:]]*$)|bun[[:space:]]+(add|install|i|init|create|remove|rm|update|x[[:space:]]+create)|pip3?[[:space:]]+(install|uninstall)|python3?[[:space:]]+-m[[:space:]]+pip[[:space:]]+(install|uninstall)|poetry[[:space:]]+(add|init|new|remove)|uv[[:space:]]+(add|init|pip[[:space:]]+install)|cargo[[:space:]]+(new|init|add|remove)|go[[:space:]]+(mod[[:space:]]+init|get)|gem[[:space:]]+install|bundle[[:space:]]+(add|init)|composer[[:space:]]+(require|init|create-project)|dotnet[[:space:]]+(new|add)|prisma[[:space:]]+(init|migrate|db)|npx[[:space:]]+prisma|drizzle-kit|create-react-app|create-next-app|create-vite|degit|rails[[:space:]]+(new|generate|g)|django-admin[[:space:]]+startproject|flutter[[:space:]]+create)'; then
  block "package install or project scaffold"
fi

# 5. Git operations that bring code into the working tree from anywhere but the Learner's pushed main.
if printf '%s' "$CMD" | grep -qE '(^|[;&|][[:space:]]*|[[:space:]])git[[:space:]]+(apply|am|cherry-pick|revert|stash[[:space:]]+(pop|apply)|commit[[:space:]]+.*(--all|-a([[:space:]]|m))|add[[:space:]]+(-A|--all|\.([[:space:]]|$)|\*))'; then
  block "git command that could commit or import non-markdown files; stage .md/.txt files by name instead"
fi

exit 0
