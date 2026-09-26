# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics — the stuff that's unique to your setup: camera names and locations, SSH hosts and aliases, preferred TTS voices, speaker/room names, device nicknames, anything environment-specific.

## Examples

```markdown
### Cameras

- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH

- home-server → 192.168.1.100, user: admin

### TTS

- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

---

## Connected Services

The workspace has a configured Zapier MCP server. The services below are the connections reported for this project; inspect the currently exposed tool descriptions before use, since available actions can vary. Do not add a new API, OAuth flow, or service connection for these workflows.

- **Google Docs:** Read, search, create, and update requested documents. Use the exact requested or configured destination. The learning journal title is `Santiago - Learning Log`; search for that exact title before creating a new document. Do not repurpose the existing setup/test document. No Drive folder is configured; use the default location offered by the connected tool unless the user asks for a particular folder.
- **Google Drive:** Search and list files to locate requested material. Ask before moving, deleting, or sharing files.
- **Google Calendar:** Check schedules and availability or create events when requested. The default calendar is not recorded; ask if more than one calendar is available or the destination is unclear. Confirm ambiguous dates and times in Santiago's timezone.
- **Gmail:** Read relevant messages and prepare drafts. Never send without explicit approval of both the recipient and final content.
- **Google Tasks:** Read and manage tasks when requested. No default task list is recorded; ask when the destination list is ambiguous. Do not create tasks from private email without a clear request.
- **GitHub:** Read repositories, issues, commits, and pull requests for requested work. Do not open, edit, merge, or close issues/PRs without explicit authorization.
- **Telegram:** Send a message to Santiago's private chat only when requested. No channel is configured; ask before posting to a group or channel.

## Defaults and Safety

- Use only tools exposed by the existing Zapier MCP connection; do not invent tool names or report unavailable actions as successful.
- Prefer concise, factual output in Data's direct voice. Preserve source meaning and mark unknown details rather than filling them in.
- Verify writes with the tool's result or a follow-up read when available. Report the resulting title/link for documents; distinguish a draft from a sent message.
- Ask before choosing among ambiguous destinations, recipients, calendars, or task lists. No Gmail sign-off or alternate Drive folder has been specified.

Add local device and infrastructure details only when known and useful; never store secrets here.

## Related

- [Agent workspace](/concepts/agent-workspace)
