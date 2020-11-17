*** Settings ***
Documentation  Sends message to Slack channel
...  %MESSAGE defines the message
...  %SECRET name of the secret that holds the Slack's WEBHOOK -key
...  %CHANNEL name of Slack channel
Library  RPA.Robocloud.Secrets
Library  RPA.Notifier
Library  parser.py

*** Task ***
Send Message
    ${message}=  Eval Python  %{MESSAGE}
    ${secrets}=  Get Secret  %{SECRET}
    
    Notify Slack  ${message}  channel=%{CHANNEL}  webhook_url=${secrets}[WEBHOOK]


