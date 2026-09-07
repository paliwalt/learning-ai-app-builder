# transcripts/

This is the ONLY place tutorial transcripts go. One file per video.
One, two, or four videos is fine. Claude reads every file, in full,
separately, then merges them into one master tutorial.

## How to paste

1. Copy the transcript from YouTube ("Show transcript" under the video)
   or from a transcript tool. Timestamps can stay; they help Claude cite
   where a concept was taught.
2. Save it as a plain `.txt` file here. Name it in the order you want to
   learn, with a short topic:

   ```
   transcripts/
     01-react-crash-course.txt
     02-tanstack-query-basics.txt
     03-nextjs-app-router.txt
     04-deploy-to-vercel.txt
   ```

3. Make the first line of each file the video title and channel, so
   Claude can cite it in the concept inventory.
4. Commit, push to `main`, then say "kickoff" (or "transcripts are in").

## What happens to multiple transcripts

Claude does NOT read them as one long text. It works in two passes:

```
01-react.txt ──► per-transcript concept list ──┐
02-query.txt ──► per-transcript concept list ──┼──► overlap matrix ──► MASTER
03-next.txt  ──► per-transcript concept list ──┘    (which video     concept list
                                                     teaches what)   + master plan
```

- Pass 1: each transcript gets its own concept list, top to bottom, nothing
  skipped. Each list is a section in `docs/01-CONCEPTS.md`.
- Pass 2: concepts that two or more videos teach are merged into one entry
  that cites every source. Where videos teach the same thing differently,
  both approaches are recorded and Claude asks you which the master plan
  should follow (default: the one that matches `reference/`).
- The master concept list feeds `docs/02-ROADMAP.md` and
  `docs/03-TUTORIAL.md`. Every step there cites the transcript(s) it comes
  from, so you can always go back to the video.

## If the videos build different projects

Say so at kickoff. Claude will ask which project is the main build, and
fold the other videos' concepts in as modules where they fit, or as an
"extra" module at the end. Nothing from any transcript is dropped.

## Adding a transcript later

Paste it, push, and say "new transcript: 05-<topic>". Claude re-runs the
analyzer for that file only, updates the overlap matrix, and proposes where
its concepts slot into the roadmap without disturbing finished modules.
