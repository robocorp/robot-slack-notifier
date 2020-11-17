# Slack Notifier Robot

Robot for sending Slack notifications

## Environment variables:

#### MESSAGE

1. Literal notification string 


    MESSAGE=Hello World

2. Python expression with Work Item- and Environment- variables in namespace


    MESSAGE="Environment variable: %s, Work Item variable: %s" % (PYTHON_EXE, my_var)


#### CHANNEL

Slack channel name e.g. ```general```

#### SECRET

Name of the Robocorp Vault's secret that holds the Slack Webhook in key ```WEBHOOK```
