# learning-boilerplate

A **template repo** whose only job is to teach **me** to code. One fork per
project. Each fork gets its own tutorial transcripts and its own build.

I paste YouTube tutorial transcripts in (and the finished tutorial code, if
I have it). Claude reads them, lists every concept they teach, plans the
build, and then tutors me through it **one concept and one step at a
time**. I type every line of code myself. Claude never writes code into
this repo. The goal is not to finish a tutorial. The goal is to understand
every line well enough to explain it, and to build the habits of an expert.

## How a project runs, start to finish

| Phase | Who | What happens |
|-------|-----|--------------|
| 1. Inputs | Me | Paste transcripts into `transcripts/` as `.txt` files. Optionally paste the finished tutorial code into `reference/`. Commit, push. |
| 2. Kickoff | Both | I say "kickoff". Claude runs `/kickoff`: asks my level (one question per turn), then chains the next two phases. |
| 3. Concepts | Claude | Runs `/transcript-analyzer`, writes `docs/01-CONCEPTS.md` listing every concept. I confirm nothing is missing. |
| 4. Brief | Both | Claude asks what to build, extras, pinned versions, layout. Writes `docs/00-PROJECT-BRIEF.md`. |
| 5. Plan | Claude | Runs `/tutorial-builder`, writes `docs/02-ROADMAP.md` (modules) and `docs/03-TUTORIAL.md` (every step, no code). I say "go". |
| 6. Build | Both | Each turn Claude runs `/step-teacher`: one concept, one small block or command, a short "why", a pro note, one question. I type it, run it, answer. |
| 7. Push | Me | When a step or group of steps is done: commit, push, open a PR, merge to `main`. |
| 8. Sync | Claude | Runs `/pr-sync`: pulls `main`, reads my actual code, gives feedback. Never fixes it. If it needs changing, I change it. |
| 9. Check | Both | At the end of each module Claude runs `/concept-check`: questions one at a time until I can explain what I built. I write my own-words notes into `docs/NOTES.md`. |

`docs/PROGRESS.md` always shows where we are. A new chat starts with
"kickoff" again: Claude reads the progress file and resumes in 3 bullets.

## The rules Claude follows

The full list is in `CLAUDE.md`. The short version:

- Claude only writes `.md` / `.txt` files and the skills and hooks in
  `.claude/`. Two hooks in `.claude/hooks/` block every other file write,
  every package install, and every scaffolder command. See
  `.claude/hooks/README.md`.
- One concept per turn. One step per turn. Never a full file. Every turn
  ends with exactly one question.
- Explanations are 2-5 sentences, then a check-in. No knowledge dumps.
- The transcripts and `reference/` are replicated exactly. Versions are
  pinned; never a bare install.
- GitHub is the source of truth: Claude pulls and reads before every step.
- Every concept from the transcripts gets taught. Nothing skipped.
- When something breaks: exact error first, a 2-3 line diagnosis, one fix.

## Folder layout

```
transcripts/        <- I paste tutorial transcripts here (.txt)
reference/          <- optional: the finished tutorial code, pasted by me
docs/
  00-PROJECT-BRIEF.md   what we build, pinned versions, my level
  01-CONCEPTS.md        every concept from the transcripts, numbered
  02-ROADMAP.md         modules + concept coverage table
  03-TUTORIAL.md        every step, in order (no code — code is taught live)
  PROGRESS.md           where we are right now
  NOTES.md              my own-words notes per concept (written by me)
.claude/
  settings.json         registers the two guard hooks
  hooks/                no-code-edits.sh, no-code-writes.sh, tests.txt
  skills/               kickoff, transcript-analyzer, tutorial-builder,
                        step-teacher, pr-sync, concept-check
CLAUDE.md               the hard rules
<project code>          written by me, lives at the repo root or in src/ —
                        decided in the project brief
```

## Starting a new project (do this once per project)

1. On GitHub, click **Use this template** (or fork / copy) into a new repo,
   e.g. `learn-react-todo`. Make sure `main` is the default branch.
2. Clone it. Paste the tutorial transcripts into `transcripts/` as `.txt`
   files (see `transcripts/README.md` for naming). If you have the finished
   code, paste it into `reference/`. Commit, push to `main`.
3. Open Claude Code in the new repo and say: **"kickoff"**.
   Claude asks a few questions one at a time, analyzes the transcripts,
   writes the plan, and waits for your "go".
4. From then on, every turn is one step. You type, run, push, merge.
   Claude pulls, reads, teaches the next step.

## Merging several tutorials into one master tutorial

Paste every video's transcript into `transcripts/`, numbered in the order
you want to learn. Claude reads each file separately and in full, builds
one concept list per video, then converges them:

```
01-react.txt  ──► T1 concepts ──┐
02-query.txt  ──► T2 concepts ──┼──► overlap matrix ──► master list ──► roadmap + tutorial
03-next.txt   ──► T3 concepts ──┘        │
                                         └── divergences: "T1 does A, T2 does B,
                                              which one?" (you decide, one at a time)
```

Every step in the tutorial cites the transcript it came from. If the
videos build different projects, you name the main build at kickoff and
the other videos' concepts fold in as modules. Nothing from any video is
dropped. Full details: `transcripts/README.md`.

## Pictures, always

Every concept, every data flow, every "how does A reach B" is drawn as an
ASCII diagram in the chat, inside a code block, before the code. Concept
checks ask you to draw the flow back. The style guide is in `CLAUDE.md`.

## The goal is mastery, not completion

The Learner starts as a complete beginner and wants to reach the top 1%
of the top 1%. So every step carries a short "pro note" (how a senior
engineer thinks about this line, what happens under the hood, the mistake
to avoid, the doc to bookmark), every module ends with a concept check
that includes a code-review-style "why this way and not that way?"
question, and the Learner keeps their own explanations in `docs/NOTES.md`.
