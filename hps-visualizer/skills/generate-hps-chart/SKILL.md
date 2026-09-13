---
name: generate-hps-chart
description: Builds a bar chart of each developer's HPS scores across the last 4 weeks plus current week, and posts it to the #automation Slack channel. Use immediately after fetch-hps-data has gathered the dataset, or when the user asks to chart or share HPS scores.
---

# Generate HPS Chart

When this skill runs:

1. Take the organized HPS dataset produced by `fetch-hps-data` (developer name, week, HPS score, 5 weeks of data).
2. Build one bar chart per developer, showing their HPS score across the 5 weeks (last 4 weeks + current week), so trends are visible at a glance.
3. Render the chart(s) as an image.
4. Post the chart image(s) to the **#automation** Slack channel — this is always the fixed target channel, regardless of who ran the skill.
5. Alongside the chart, include a short caption naming the developer and the week range covered.
6. If a developer had a missing week (per fetch-hps-data), note that gap in the caption rather than plotting it as zero.
7. Confirm back to the user, in plain language, that the chart(s) were posted, and to which channel.

Always post to #automation — never to a developer's DM or any other channel, even if a developer's name is mentioned in the data.
