#!/bin/sh
API="https://breathecode.herokuapp.com/v1"
TOKEN=*** 'BREATHECODE_TOKEN='

case "${1:-auth}" in
  auth)
    curl -sL -H "Authorization: Token $TOKEN" "$API/admissions/user/me" | python3 -c "
import sys, json
d = json.load(sys.stdin)
print(f'✅ {d.get(\"first_name\",\"\")} {d.get(\"last_name\",\"\")} — {d.get(\"email\",\"\")}')
print(f'   Active cohorts: {len(d.get(\"cohorts\",[]))}')
"
    ;;
  pending)
    curl -sL -H "Authorization: Token $TOKEN" "$API/admissions/user/me" | python3 -c "
import sys, json
d = json.load(sys.stdin)
cohorts = d.get('cohorts',[])
for item in cohorts:
    c = item.get('cohort',{})
    proj = item.get('completion',{}).get('required',{}).get('PROJECT',{})
    missing = proj.get('missing',[])
    total = proj.get('total',0)
    if missing:
        print(f'{c.get(\"name\")}: {len(missing)} pending / {total} total')
"
    ;;
  progress)
    curl -sL -H "Authorization: Token $TOKEN" "$API/admissions/user/me" | python3 -c "
import sys, json
d = json.load(sys.stdin)
for item in d.get('cohorts',[]):
    c = item.get('cohort',{})
    p = item.get('completion',{}).get('overall',{}).get('percent',0)
    print(f'{c.get(\"name\")}: {p}%')
"
    ;;
  projects)
    curl -sL -H "Authorization: Token $TOKEN" "$API/assignment/user/me/task?task_type=PROJECT&limit=50" | python3 -c "
import sys, json
for r in json.load(sys.stdin).get('results',[]):
    print(f'[{r.get(\"task_status\",\"?\")}] {r[\"title\"]}')
"
    ;;
  *) echo "Usage: ./4geeks-connector.sh [auth|pending|progress|projects]" ;;
esac
