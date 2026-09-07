# Hooks — the no-code guard

Two `PreToolUse` hooks, registered in `.claude/settings.json`, enforce the
repo's first hard rule: Claude never writes code here.

| Hook | Intercepts | Blocks |
|------|------------|--------|
| `no-code-edits.sh` | Write, Edit, MultiEdit, NotebookEdit | any target that is not `.md`, `.txt`, or under `.claude/` |
| `no-code-writes.sh` | Bash | redirects and `tee` into other files; `sed -i`, `touch`, `cp`, `mv` and friends on other files; scripted writes (`open(..., "w")`, `writeFileSync`); package installs and scaffolders (`npm install`, `npx create-*`, `pip install`, `cargo new`, `prisma init`, ...); `git apply/am/cherry-pick/revert`; `git add -A` / `git add .` |

A blocked call returns exit code 2 with a message telling Claude to hand
the code to the Learner as a copy-paste block instead.

What stays allowed for Claude: reading anything, `git pull`, `git log`,
`git diff`, `npm run ...`, `npm ci`, `npm test`, and writing `.md`/`.txt`
files or files under `.claude/`. Claude stages docs by name
(`git add docs/PROGRESS.md`), never with `-A`.

## Limits

This is a guard, not a sandbox. It matches command text, so an unusual
spelling could slip past it. The rule in `CLAUDE.md` is still the real
contract; the hook is there to catch the reflex. If you see Claude write a
code file, tell it to revert and hand you the block, and add the command
shape to `tests.txt` and the script.

## Tests

`tests.txt` is a bash script with a table of commands that must pass and
commands that must be blocked. Run it after any change to the guard:

```
bash .claude/hooks/tests.txt .
```

Expected last line: `ALL PASSED`.
