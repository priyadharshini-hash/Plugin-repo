#!/bin/bash
# Fires automatically after fetch-hps-data completes.
# Instructs Claude to run generate-hps-chart, then explicitly state each
# developer's score in plain conversation text — this is what lets the
# hps-commentary-agent actually notice the scores and react, since agents
# watch conversation text, not background script output.

echo "fetch-hps-data has completed. Now automatically run the generate-hps-chart skill using the dataset just retrieved, and post the resulting chart(s) to the #automation Slack channel. After posting, also state each developer's name and their current-week HPS score as plain text in this conversation (e.g. 'Devarsh: 8, Nudman: 6') so it is visible for commentary."
