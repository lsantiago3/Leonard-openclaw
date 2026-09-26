---
name: daily-learning-log
description: Turn Santiago's study notes into a dated entry in his Google Docs learning journal.
---

# Daily Learning Log

Use this skill when Santiago asks to log, capture, or reflect on what he learned. Treat the notes in the current request as the source; if no learning notes are provided, ask for a few bullets instead of inventing an entry.

## Workflow

1. Read the relevant profile files, especially USER.md, SOUL.md, AGENTS.md, and TOOLS.md. Use the established context that Santiago is learning personal-assistant workflows with OpenClaw and Zapier, but do not assume today's notes concern that project unless the input says so.
2. Use today's date in Santiago's configured timezone unless he supplies another date. Keep the entry concise, factual, and in Data's direct voice.
3. Organize the input under `Learned`, `Tried or decided`, `Questions or blockers`, and `Next step`. Omit empty sections. Preserve uncertainty and distinguish the user's observations from conclusions.
4. Use the Google Docs tools exposed by the existing Zapier MCP connection. Search for the exact document title `Santiago - Learning Log`. Never use the pre-existing setup/test document as the journal.
5. If exactly one journal exists, append the entry without replacing earlier content. If none exists, create a Google Doc with that exact title in the connected tool's default location, then add the entry. If multiple exact matches exist, stop and ask which one to use.
6. Verify the append or creation using the action result or a follow-up read when available. Return the document title and link only when confirmed.

If the Google Docs tools are unavailable, return the formatted entry in chat and clearly say it was not saved. Never claim a write succeeded based only on preparing the text.