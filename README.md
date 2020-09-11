# robot-slack-notifier

Robot for sending Slack notifications

Environment variables:

| Environment variable  | Usage |
| ------------- | ------------- |
| SLACK_PATH or SLACK_MESSAGE | Use either SLACK_PATH or SLACK_MESSAGE:<br>  - SLACK_MESSAGE is the notification message e.g. "Hello World"<br>  - SLACK_PATH defines a key in Robocorp work item that contains the message e.g. "hello_world" -> work_item["hello_world"] |
| SLACK_CHANNEL  | Slack channel name  |
| SLACK_SECRET  | Name of Robocorp vault's secret that holds the Slack webhook in key WEBHOOK |
