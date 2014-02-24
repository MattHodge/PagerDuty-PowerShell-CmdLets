# Trigger Event

$DeviceDisplayName = "%Device.DisplayName"
$DeviceState = "%Device.State"
$SystemDate = "%System.Date"
$SystemTime = "%System.Time"
$DeviceDownActiceMonitors = "%Device.ActiveMonitorDownNames"
$NumberOfDownDevices = "%System.NumberofDownDevices"
$NumberOfUpDevices = "%System.NumberofUpDevices"

$Object = New-Object PSObject -Property @{ 
                                            device_display_name = $DeviceDisplayName
                                            device_state = $DeviceState
                                            whatsup_date = $SystemDate
                                            whatsup_time = $SystemTime
                                            device_monitors_down = $DeviceDownActiceMonitors
                                            whatsup_up_devices = $NumberOfUpDevices
                                            whatsup_down_devices = $NumberOfDownDevice
                                          } 

. C:\WhatsUpScripts\PagerDuty\PagerDutyCmdLets.ps1

try
{
    $resultText = Send-PagerDutyEvent -Trigger -ServiceKey 1111111111111111111111111 -Description ('WhatsUp Sydney - ' + $DeviceDisplayName + ' is ' + $DeviceState) -IncidentKey $DeviceDisplayName -Details $Object
    $resultText = $resultText.Status

    $actionResult = 0
}

catch
{
    $resultText = $_.Exception.Message
    $actionResult = 1
}

finally
{
    $Context.SetResult($actionResult, $resultText)
}