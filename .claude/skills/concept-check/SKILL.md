---
name: concept-check
description: At the end of each module, quiz the Learner on the concepts just taught, in their own words, and reteach any gaps before moving on. Use when a module's last step is merged, or when the Learner asks for a recap.
---

# Concept Check

Building is not the same as understanding. Before a new module starts,
make sure the Learner can explain what they built.

## Procedure

1. Read `docs/PROGRESS.md` to find the module just finished and the
   concepts (C-numbers) it covered, per `docs/02-ROADMAP.md`.
2. `git pull origin main` and open the files built in that module.
3. Ask 3 to 6 questions, ONE AT A TIME. Wait for each answer before asking
   the next. Question types, mixed:
   - **Explain:** "In your own words, what does line 12 of `src/api.js` do?"
   - **Predict:** "If you deleted the `await` here, what would happen?"
   - **Connect:** "How does the value from `useState` here end up on
     screen?"
   - **Change:** "How would you make this list show only the first 3
     items?" (they answer in words; no code needed unless they want to try)
   - **Draw (always include one):** "Sketch, in ASCII or in words, how a
     click on the Add button ends up as a new row on screen." The Learner
     draws it back; you redraw it correctly next to theirs and point at
     the one arrow they missed.
   - **Expert (always include one):** "Why did the tutorial do it this way
     and not <the obvious alternative>? What would break?" — the question a
     senior engineer would ask in code review.
4. For each answer:
   - Right: confirm and add one detail they may not have noticed.
   - Partly right: point at the exact gap and ask a follow-up.
   - Wrong: do not just correct. Reteach the concept from a different angle
     (new analogy, walk through the real line in their file), then re-ask.
5. If they want to try a change for real, treat it as a mini step: they
   write it, push it, you `/pr-sync` it.

## Rules

- Minimum 2-3 questions per module, one per turn. Always include one
  "predict what breaks if we delete this line" question.
- Confirm the thing actually runs before closing the module.
- If the Learner cannot answer: re-teach, do not advance.

## When done

1. Ask the Learner to write one or two lines per concept, in their own
   words, into `docs/NOTES.md` under this module, then push. Read it. If a
   line is vague or wrong, that concept goes to "revisit".
2. Write the outcome into `docs/PROGRESS.md` under the module: concepts
   confirmed, concepts to revisit.
3. Tell the Learner the module is closed and name the first step of the
   next module. Do not teach it yet. End with one question: "ready?"

## Never

- Never ask more than one question per turn.
- Never give a score or grade. This is a conversation, not an exam.
