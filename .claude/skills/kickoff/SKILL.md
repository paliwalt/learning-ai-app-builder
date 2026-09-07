---
name: kickoff
description: Start or resume a project in a fork of this template. Checks transcripts and reference code are in, calibrates the Learner's level, runs transcript-analyzer, fills the project brief one question at a time, runs tutorial-builder, and hands off to step-teacher. Use when the Learner says "kickoff", "new project", "start", "resume", or "the transcripts are in".
---

# Kickoff

This template is forked or copied once per project. Kickoff is the first
thing Claude runs in the new fork, and the first thing Claude runs when a
new chat resumes an existing project.

## 0. Resume or fresh?

`git pull origin main` then `cat docs/PROGRESS.md`.

- If it shows a current step (Phase 1 or later): this is a RESUME. Read
  the files the last step touched. Reply with exactly:
  - 3 bullets: what is done, what is next, what the Learner will learn next
  - ONE question confirming the state of their code / where they got lost
  Then hand off to `/step-teacher`. Skip the rest of this skill.
- Otherwise: fresh project. Continue.

## 1. Sync and check inputs

`ls transcripts/ reference/`.

- If `transcripts/` has only `README.md`: ask the Learner to paste the
  transcripts as `.txt` files (and the finished tutorial code into
  `reference/` if they have it), push, and say "transcripts are in". Stop.
- If transcripts exist: continue.

## 2. Calibrate (once, briefly, ONE question per turn)

Ask, in this order, waiting for each answer:
1. "Your level in each tech the transcripts use (e.g. TypeScript, React):
   never touched / seen it / can write a bit?"
2. "Fresh start, or were you following this tutorial and got lost? If lost,
   where?"
3. "OS, editor, terminal?"
Record the answers in `docs/00-PROJECT-BRIEF.md` (Learner section).

## 3. Analyze

Run `/transcript-analyzer`. It writes `docs/01-CONCEPTS.md`. Push it
(docs only, staged by name). Ask the Learner to skim the list and confirm
nothing from the videos is missing. Wait for the confirmation.

## 4. Brief (ONE question per turn)

Ask only what `docs/00-PROJECT-BRIEF.md` still lacks:
- If the transcripts build different projects: "T1 builds <X>, T2 builds
  <Y>. Which is the main build? The other's concepts fold in as modules."
- Each divergence from Part C of the concept inventory, one per turn,
  with your recommendation.
- "The transcripts build <X>. Build exactly that, or change anything?"
- "Any extra features beyond the videos?" Offer 2-3 good stretch goals so
  they can pick.
- Pinned versions: list every package and version the transcripts /
  reference mention. Anything unversioned: ask before choosing. Never
  leave the table with a blank version.
- Where the project code lives (`/`, `src/`, `app/`), and PR granularity.
Fill the brief, push it, and read it back in five lines.

## 5. Plan

Run `/tutorial-builder`. It writes `docs/02-ROADMAP.md` and
`docs/03-TUTORIAL.md`. Push them. Set `docs/PROGRESS.md` to
"Phase 1 — building, current step M1.S1". Push.

## 6. Hand off

Tell the Learner the module count, the step count, and the title of step
M1.S1. Ask them to say "go". On "go", run `/step-teacher`.

## Never

- Never start teaching before the Learner has confirmed the concept list
  AND the roadmap.
- Never ask two questions in one turn.
- Never write anything except the `docs/*.md` files named above.
