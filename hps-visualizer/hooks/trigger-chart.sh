#!/bin/bash
# Fires automatically after fetch-hps-data completes.
# Instructs Claude to immediately run generate-hps-chart on the data just fetched,
# so the user never has to trigger the charting step manually.

echo "fetch-hps-data has completed. Now automatically run the generate-hps-chart skill using the dataset just retrieved, and post the resulting chart(s) to the #automation Slack channel."
