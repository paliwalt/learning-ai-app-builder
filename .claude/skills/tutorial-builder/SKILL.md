---
name: tutorial-builder
description: Merge the concept inventory and the project brief into a step-by-step build roadmap and a detailed one-step-at-a-time tutorial plan. Use after transcript-analyzer and after the project brief is confirmed.
---

# Tutorial Builder

Turn `docs/01-CONCEPTS.md` + `docs/00-PROJECT-BRIEF.md` into two documents:
`docs/02-ROADMAP.md` (the big picture) and `docs/03-TUTORIAL.md` (every
single step, in order).

## Hard constraints

- Write ONLY `docs/02-ROADMAP.md` and `docs/03-TUTORIAL.md`.
- Every concept C01..CNN from the inventory must be assigned to at least one
  step. Add a coverage table at the end of the roadmap proving it.
- Steps contain NO code. They describe what will be built and which concept
  is taught. Code is only ever produced live, in the step-teacher session,
  a few lines at a time.
- If the Learner asked for features beyond the transcripts (see the brief),
  add them as later modules and mark concepts that come from outside the
  transcripts `[extra]`.
- Replicate the source exactly. File names, function names, order of
  building, and library choices come from the transcripts and `reference/`,
  not from your preferences. Where the source is silent, write
  "SOURCE GAP: <what is missing>" in the step and ask the Learner before
  the step is taught.
- Every step that installs or creates something names the exact version
  from the brief's Pinned versions table. If the table lacks it, stop and
  ask the Learner; do not pick a version yourself.

## Procedure

1. Read `docs/00-PROJECT-BRIEF.md` and `docs/01-CONCEPTS.md` fully.
2. Decide the build order. Follow the transcripts' order unless the brief
   changes the project enough to require reordering. Keep the rule:
   a concept is never used in a step before the step that teaches it.
3. Split the build into Modules (a module = one working milestone the
   Learner can run and see, e.g. "M2 — the page renders a static list").
4. Split each module into Steps. A step is the smallest unit a beginner can
   do in one sitting and verify: typically 1 to 15 lines of code, or one
   terminal command, or one file created empty. Any step that would need a
   full file is too big; split it.
5. For each step, define what "done" looks like (something the Learner can
   run, see, or print) so they always know they succeeded.

## Building ONE master tutorial from several transcripts

- Work from Part D (master list) of `docs/01-CONCEPTS.md`, never from a
  single transcript's list. Each step cites the transcript ids it draws
  on (T1-07, T2-03) so the Learner can go back to the video.
- Divergences in Part C use the Learner's decision. If a decision is still
  blank, stop and ask before planning that module.
- If the videos build different projects, the brief names the main build.
  Concepts from the other videos go into the module where they naturally
  fit, or into a final "extra" module. Nothing is dropped.

## `docs/02-ROADMAP.md` format

```
# Roadmap — <Project name>

Goal: <one sentence>
Stack: <languages / frameworks / tools>
Built from: T1 <title>, T2 <title>, ...

## Architecture (ASCII)
<one diagram, up to 12 lines, of the finished project: the main pieces
and the arrows between them. This is the map every step points back to.>

## Modules
| Module | Milestone (what works at the end) | Concepts taught |
|--------|-----------------------------------|-----------------|
| M1 | ... | C01, C02 |

## Concept coverage
| Concept | Module.Step |
|---------|-------------|
| C01 | M1.S1 |
...(every concept, no gaps)
```

## `docs/03-TUTORIAL.md` format

```
# Tutorial — <Project name>

Read CLAUDE.md before teaching from this file.

## M1 — <milestone>

### M1.S1 — <short step title>
- **Concept:** C<NN> <name>
- **Sources:** T1-07, T2-03 (transcript ids this step comes from)
- **Picture:** what the ASCII diagram for this step must show (one line, e.g. "request → route handler → DB → response")
- **Teach:** what to explain before showing anything
- **Build:** what the Learner will type (described, NOT the code), in which file, roughly how many lines
- **Verify:** what they should see / run to confirm it works
- **Connects to:** how this links to earlier steps or other files
- **PR:** yes/no (group tiny steps into one PR per module or per few steps; say which)
```

## When done

Report: module count, step count, confirmation that every concept is
covered, and the first step you will teach. Ask the Learner to read the
roadmap and say "go" before starting step-teacher.
