---
name: pr-sync
description: After the Learner merges a PR, pull main, read the actual code they wrote, verify it matches the step, and give feedback without fixing anything. Use after every merge and whenever the Learner says they pushed.
---

# PR Sync

GitHub is the only source of truth for what the Learner has built. This
skill re-syncs your understanding with reality.

## Procedure

1. `git fetch origin main && git pull origin main`. If the pull fails or
   shows nothing new, tell the Learner and ask them to confirm the merge.
2. `git log --oneline -5` and `git diff HEAD~1 --stat` (or the range since
   the last synced commit noted in `docs/PROGRESS.md`) to see what changed.
3. `cat` every changed file in full. Do not skim the diff only; read the
   file so you know its current shape for the next step.
4. Compare against the step(s) in `docs/03-TUTORIAL.md` that this PR was
   supposed to complete.

## Feedback — what to say

Report in this order, briefly:

- **What you found:** which files changed, in one or two lines.
- **Matches the step?** yes / partly / no.
- **Anything to learn from:** typos, a concept applied slightly wrong,
  naming, a line they added that the step did not ask for (ask them why —
  it may be a great sign of curiosity, or a misunderstanding).
- **If something must change:** explain why in terms of the concept, then
  give the exact change as a copy-paste block with file + line. The Learner
  applies it and pushes again. You never touch the file.
- **If it is good:** say so specifically ("the way you named `fetchPosts`
  tells the reader exactly what it does") — not just "looks good".

## Then

Update `docs/PROGRESS.md`: mark the step(s) done, record the merge commit
hash as "last synced", note anything to revisit in a later concept-check.
Do not start the next step inside this skill; hand back to step-teacher.

## Never

- Never edit, format, or "tidy" the Learner's code.
- Never run their build/test commands to fix things for them. You may run
  them to SEE an error, then explain it.
