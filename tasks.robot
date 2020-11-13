*** Settings ***
Documentation  Sends message to Slack channel
...  %MESSAGE defines the message
...  %SECRET name of the secret that holds the Slack's WEBHOOK -key
...  %CHANNEL name of Slack channel
Library  OperatingSystem
Library  RPA.Robocloud.Secrets
Library  RPA.Notifier
Library  parser.py

*** Task ***
Send Message
    ${message}=  Get Environment Variable  MESSAGE
    ${message}=  Eval Python  ${message}
    ${secrets}=  Get Secret  %{SECRET}
    
    Notify Slack  ${message}  channel=%{CHANNEL}  webhook_url=${secrets}[WEBHOOK]




