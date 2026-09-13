---
name: fetch-hps-data
description: Fetches each developer's HPS (High Performance Score) data from their Notion HPS page, covering the last 4 weeks plus the current week. Use when the user asks for an HPS check, HPS trend, or "how's the team's HPS looking."
---

# Fetch HPS Data

When this skill runs:

1. Identify the developers to check. If not specified by the user, use the standard set of developers tracked in the HPS Social Apps Board.
2. For each developer, locate their individual HPS Notion page (search by name if the page ID isn't already known).
3. Query each developer's HPS data source for entries spanning the last 4 weeks plus the current week (5 weeks of data total), pulling at minimum: sprint/week name, HPS score, and developer name.
4. Organize the results per developer, in chronological order by sprint/week, so the data is ready to be charted (one data series per developer, one point per week).
5. If a developer has no entry for a given week, note it as missing rather than treating it as a zero score.
6. Pass this organized dataset forward — it will be used immediately by the charting skill to generate the visual.
7. Briefly confirm in plain language what was found, e.g. how many developers and weeks were covered, and flag any developer with missing weeks.

Keep this skill focused only on retrieving and organizing the data — charting and posting to Slack are handled by a separate skill.
