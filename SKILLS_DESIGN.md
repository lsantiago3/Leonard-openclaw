# Skills Design

## Daily Learning Log

### What does this skill do?
It turns Santiago's brief study notes into a dated, structured learning-journal entry and appends it to a Google Doc.

### What input does the agent need?
A few bullets about what Santiago learned, tried, decided, or wants to revisit; a date is optional and defaults to today in Santiago's configured timezone. The agent already knows from the profile files that Santiago is studying personal-assistant workflows, has an OpenClaw workspace, and has a Zapier connection with Google Docs. It should use the concise, direct Data voice, preserve uncertainty rather than fill gaps, and locate or confirm the journal destination instead of repurposing an unrelated document.

### What does a good output look like?
A compact entry with the date, topic, key learnings, decisions or blockers, and next step, appended to the designated learning journal in Google Docs. Success means the entry is present in the correct document and the agent returns its title and link; it must not claim success without confirming the write.

## Meeting Notes Formatter

### What does this skill do?
It converts Santiago's rough meeting notes into a clear record of decisions, action items, and open questions, then saves it as a Google Doc.

### What input does the agent need?
Raw notes, with the meeting topic and date if known; attendees, owners, and due dates are optional. The agent already knows Santiago's name, timezone, active OpenClaw/Zapier learning project, preferences for direct communication, and privacy and confirmation rules from the five profile files. It must mark missing owners or dates as unassigned/unspecified instead of inventing them.

### What does a good output look like?
A Google Doc titled with the meeting topic and date, organized into summary, decisions, action items (owner and due date when provided), and open questions. The agent returns the document title and link only after confirming the save; it asks before sharing the document or creating tasks/calendar events.
