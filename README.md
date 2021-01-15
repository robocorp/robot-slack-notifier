# Slack Notifier Robot

Robot for sending Slack notifications

## Configuration

Configure following environment variables:

#### MESSAGE

1. Literal notification string

```
MESSAGE=Hello World
```

2. Python expression with Work Item- and Environment- variables in namespace

```
MESSAGE="Environment variable: %s, Work Item variable: %s" % (PYTHON_EXE, my_var)
```

#### CHANNEL

Slack channel name

```
CHANNEL=general
```

#### SECRET

Name of the Robocorp Vault's secret that holds the Slack Webhook in key

```
SECRET=SlackSecret
```

...this should be in Robocorp Vault - copy paste webhook URL from Slack:

```
SlackSecret.WEBHOOK=https://hooks.slack.com/services/123456789/12345678901/123456789012345678901234
```
