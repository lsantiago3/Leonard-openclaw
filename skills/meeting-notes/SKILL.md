---
name: meeting-notes
description: Structure rough meeting notes as decisions, action items, and open questions in Google Docs.
---

# Meeting Notes

Use this skill when Santiago provides rough notes from a meeting and asks to organize or save them. If the request contains no notes, ask him to provide them. Do not infer attendees, decisions, owners, deadlines, or commitments.

## Workflow

1. Read the relevant profile files, especially USER.md, SOUL.md, AGENTS.md, and TOOLS.md. Apply the privacy and confirmation rules, and keep the tone concise and direct.
2. Preserve the supplied meaning and organize it into `Summary`, `Decisions`, `Action items`, and `Open questions`. Omit empty sections. For an action item, include an owner or due date only when the notes identify one; otherwise label it `Unassigned` or `No due date specified`.
3. Use the meeting date and topic when supplied. If either is missing, use `Date not provided` or `Topic not provided` in the content and use a neutral document title rather than guessing.
4. Use the Google Docs tools exposed by the existing Zapier MCP connection to create a new document titled `Meeting Notes - <date> - <topic>` using the known details. Do not share it or create calendar events or tasks as part of this skill.
5. Verify the document was created using the action result or a follow-up read when available. Return the title and link only when confirmed.

If the Google Docs tools are unavailable, return the formatted notes in chat and clearly say they were not saved. Ask before sharing notes or taking follow-up actions outside the document.