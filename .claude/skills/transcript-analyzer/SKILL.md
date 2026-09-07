---
name: transcript-analyzer
description: Read EVERY tutorial transcript in transcripts/ separately and in full, produce a per-transcript concept list for each, then converge overlapping concepts into one master concept inventory with an overlap matrix. Use FIRST, before any planning or teaching, whenever transcripts are added or changed.
---

# Transcript Analyzer

The Learner pastes one to several YouTube tutorial transcripts into
`transcripts/`. Several videos may teach the same things. Your job:
read each one fully on its own, then merge them into ONE master concept
inventory that misses nothing from any video.

```
transcripts/*.txt ──► Pass 1: one list per transcript
                  ──► Pass 2: overlap matrix + merged master list
                  ──► docs/01-CONCEPTS.md
```

## Hard constraints

- Output goes ONLY to `docs/01-CONCEPTS.md`. Write no other file.
- Every transcript is read top to bottom, in full. Never sample, never
  skim, never rely on the title. A long file is read in chunks with
  `sed -n '1,400p'`, `sed -n '401,800p'`, and so on, until the end.
- Every concept the creator explains, names, or uses appears. If in
  doubt, include it. Do not skip "obvious" things (what a variable is,
  what a terminal is). The Learner may not know them.
- Paraphrase in your own words. Short paraphrases are fine; long verbatim
  quotes from the transcript are not.

## Pass 1 — one list per transcript

`ls transcripts/ reference/`. For each transcript file:

1. Read it fully. If there are three or more transcripts, you may launch
   one subagent per transcript (Agent tool) so they read in parallel; give
   each subagent this exact per-transcript procedure and the output
   format below, and tell it to return the list as text, not write files.
   You then assemble the results. Never let a subagent write to the repo.
2. Walk it top to bottom and log a concept every time the creator:
   - introduces a term, tool, command, syntax, pattern, or mental model
   - explains WHY something is done a certain way
   - shows how two parts connect (frontend to backend, file A importing
     file B, a hook calling an API, a request becoming a response)
   - fixes a bug or warns about a common mistake
   - installs or names a package (record the exact version if spoken)
3. Where the transcript ASSUMES a concept without teaching it (uses
   `async/await` without explaining it), log it tagged `[assumed]`.
4. Number them T<n>-<nn> (T1-01, T1-02, ... for transcript 1).

Per-transcript format (one section per file):

```
## Transcript T<n>: <file name> — <title / channel>
Builds: <what this video ends up with, one line>
Packages and versions mentioned: <list, or "none stated">

| # | Concept | What the creator does with it | Where (timestamp or quote) | Tag |
|---|---------|-------------------------------|----------------------------|-----|
| T1-01 | ... | ... | ~03:12 "..." | taught / assumed |
```

## Pass 2 — converge

1. Line the per-transcript lists up. Two entries are the SAME concept when
   a Learner who understood one would understand the other (`useState` in
   video 1 and "state hook" in video 2). They are DIFFERENT when the
   mental model differs (fetching with `useEffect` vs with TanStack
   Query): keep both, and note they solve the same problem differently.
2. Build the overlap matrix: one row per master concept, one column per
   transcript, a mark where that transcript teaches it.
3. Where videos teach the same thing DIFFERENTLY, write a "Divergence"
   entry: what each does, and which one you recommend for the master plan
   (default: the one matching `reference/`, else the more recent or more
   standard approach). The Learner decides; you ask.
4. Order the master list by dependency: nothing appears before the
   concepts it needs. Number master concepts C01, C02, ...
5. Group into categories that fit these transcripts (Environment &
   Tooling, Language Fundamentals, Project Structure, Core Feature
   Concepts, Data / State, Networking / APIs, Styling / UI, Testing,
   Deployment, ...). Do not force categories that have nothing in them.

## `docs/01-CONCEPTS.md` layout

```
# Concept Inventory

Sources:
- T1 transcripts/<file> — <title>
- T2 ...

Per-transcript concepts: T1 <n>, T2 <n>, ...
Master concepts after merging: <N>

## Part A — per-transcript lists
<one section per transcript, format above>

## Part B — overlap matrix
| Master | Concept | T1 | T2 | T3 |
|--------|---------|----|----|----|
| C01 | ... | x | x |  |

## Part C — divergences (same problem, different approach)
### D1 — <topic>
- T1 does: ...
- T2 does: ...
- Recommended for master plan: ... because ...
- Learner's decision: (blank until they answer)

## Part D — master concept list
### C<NN> — <Concept name>
- **What it is:** one or two plain sentences
- **Picture:** a 3-8 line ASCII diagram of the concept (boxes and arrows)
- **Why the project needs it:** one sentence
- **Depends on:** C<xx>, C<yy> (or "nothing")
- **Sources:** T1-07, T2-03
- **Tags:** [taught] / [assumed] / [extra]
```

## Adding a transcript later

When the Learner says "new transcript: <file>", run Pass 1 for that file
only, then redo Pass 2 with the new column. Existing C-numbers keep their
numbers; new concepts get the next numbers, and you propose where they
slot into `docs/02-ROADMAP.md` without renumbering finished modules.

## When done

Tell the Learner, briefly: how many transcripts you read, per-transcript
counts, the master count, the `[assumed]` concepts you added, and each
divergence as ONE question at a time ("T1 fetches with useEffect, T2 with
TanStack Query. Master plan follows T2 unless you say otherwise. OK?").
Ask them to skim Part D and confirm nothing from any video is missing.
Do not proceed to tutorial-builder until they confirm.
