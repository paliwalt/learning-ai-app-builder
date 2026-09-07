#!/usr/bin/env bash
# PreToolUse guard for Write / Edit / MultiEdit / NotebookEdit.
# HARD RULE: Claude may only write .md / .txt files and files under .claude/.
INPUT=$(cat)
if command -v jq >/dev/null 2>&1; then
  FP=$(printf '%s' "$INPUT" | jq -r '.tool_input.file_path // .tool_input.notebook_path // empty')
else
  FP=$(printf '%s' "$INPUT" | sed -n 's/.*"file_path"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
fi
case "$FP" in
  ""|*.md|*.txt|*/.claude/*|.claude/*) exit 0 ;;
esac
echo "BLOCKED by learning-boilerplate HARD RULE: Claude may only write .md/.txt files and .claude/ skills or hooks. Target was: $FP. Do NOT write code into the repo. Give the Learner the code as a small copy-paste block, explain it, and ask them to type it, run it, commit, push, and open a PR." >&2
exit 2
