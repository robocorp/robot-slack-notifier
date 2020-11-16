# robot-slack-notifier

Robot for sending Slack notifications

Environment variables:

| Environment variable  | Usage |
| ------------- | ------------- |
| MESSAGE | Message can be:<br>- Literal message to be send e.g. Hello World<br>- Python expression where Work Item variables and environment variables are in namespace e.g. "Email from %s processed by (%s)" % (from, PYTHON_EXE) |
| SLACK_CHANNEL  | Slack channel name  |
| SLACK_SECRET  | Name of Robocorp vault's secret that holds the Slack webhook in key WEBHOOK |
