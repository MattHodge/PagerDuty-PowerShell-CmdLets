#PagerDuty PowerShell CmdLets

PowerShell CmdLets for using the PagerDuty API. 

* *Send-PagerDutyEvent* - allows you to send Trigger, Acknowledge and Resolve events to the PagerDuty API.
* *Get-PagerDutyEvent* - gets a list of events from PagerDuty.

## Requirements
* In PagerDuty Admin Console, create a *Generic API* service for `Send-PagerDutyEvent` to use. You will need the *Service API Key*
* In PagerDuty Admin Console, create an *API Access Key* service for `Get-PagerDutyEvent` to use.

## Usage

1. Open PowerShell and ensure you set your Execution Policy to allow scripts be run, for example `Set-ExecutionPolicy RemoteSigned`.
2. In PowerShell, enter the directory the you downloaded the script, and dot source it `. .\PagerDutyCmdLets.ps1`
3. Use the CmdLet built in help `Get-Help Send-PagerDutyEvent` or `Get-Help Get-PagerDutyEvent`

## Links
* (http://www.pagerduty.com/ "PagerDuty")
* (http://developer.pagerduty.com/documentation/integration/events "PagerDuty Event API")
