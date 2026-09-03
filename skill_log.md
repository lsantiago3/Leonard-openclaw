Overview
Skills built through conversational interaction with OpenClaw to connect to the 4Geeks/BreatheCode student API using a personal student token. Each skill maps to one specific API concern.

**API base URL:** `https://breathecode.herokuapp.com/v1`
**Auth:** `Authorization: Token <token>`

## Core Skills

### Skill 1 — Authenticate
- **Prompt:** "I want to give you the ability to connect to my 4Geeks account using my student token, without me having to write any code."
- **Endpoint:** `GET /v1/admissions/user/me`
- **Test result:** ✅ Authenticated as: LEONARD SANTIAGO, leonard_5319@msn.com, GitHub: lsantiago3, 15 active cohorts

### Skill 2 — Get My Projects
- **Prompt:** "Show me my assigned projects with their current status."
- **Endpoint:** `GET /v1/assignment/user/me/task?task_type=PROJECT&limit=50`
- **Test result:** ✅ 97 projects found across all cohorts (PENDING)

### Skill 3 — Get Pending Work
- **Prompt:** "What do I still have to complete?"
- **Endpoint:** `GET /v1/admissions/user/me` (completion data)
- **Test result:** ✅ Shows pending projects per course: e.g. Personal Assistants with Open Claw (19 pending), Back End Development (5 pending), etc.

### Skill 4 — Progress Summary
- **Prompt:** "How far along am I in the course?"
- **Endpoint:** `GET /v1/admissions/user/me`
- **Test result:** ✅ Shows completion per cohort: 0/19 for Full Stack, 0/5 for Back End, etc. — 0% across all

## Extended Skills

### Skill 5 — Tasks by Status
- **Prompt:** "Show me my pending tasks."
- **Endpoint:** `GET /v1/assignment/user/me/task?task_status=PENDING&limit=20`
- **Test result:** ✅ Lists pending LESSON/EXERCISE tasks

### Skill 6 — List Cohorts
- **Prompt:** "What courses am I enrolled in?"
- **Endpoint:** `GET /v1/admissions/user/me`
- **Test result:** ✅ 15 active cohorts listed

### Skill 7 — Certificates
- **Prompt:** "Do I have any certificates?"
- **Endpoint:** `GET /v1/certificate/`
- **Test result:** ✅ No certificates yet (expected)

### Skill 8 — Activity
- **Prompt:** "What have I been working on recently?"
- **Endpoint:** `GET /v1/activity/me`
- **Test result:** ✅ No recent activity recorded
