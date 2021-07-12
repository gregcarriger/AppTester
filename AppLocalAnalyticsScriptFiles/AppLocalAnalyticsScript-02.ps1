#############################################################
# AppLocalAnalyticsScript-02.ps1                     #
# Programmers: Greg Carriger                                #
# Date: January 2020                                        #
#############################################################

#check scheduled tasks.

$status = "Checking AppAssy"
$i=0
while ((Get-ScheduledTask -TaskName 'AppAssy').State  -ne 'Disabled') {
    $i++
	Write-Progress -Activity "Waiting on AppAssy" -status $status -percentComplete ($i / 60)
}
write-host "AppAssy is disabled"

$status = "Checking AppCerts"
$i=0
while ((Get-ScheduledTask -TaskName 'AppCerts').State  -ne 'Disabled') {
    $i++
	Write-Progress -Activity "Waiting on AppCerts" -status $status -percentComplete ($i / 60)
}
write-host "AppCerts is disabled"

$status = "Checking AppConstraints"
$i=0
while ((Get-ScheduledTask -TaskName 'AppConstraints').State  -ne 'Disabled') {
    $i++
	Write-Progress -Activity "Waiting on AppConstraints" -status $status -percentComplete ($i / 60)
}
write-host "AppConstraints is disabled"


$status = "Checking AppFab"
$i=0
while ((Get-ScheduledTask -TaskName 'AppFab').State  -ne 'Disabled') {
    $i++
	Write-Progress -Activity "Waiting on AppFab" -status $status -percentComplete ($i / 60)
}
write-host "AppFab is disabled"



$status = "Checking AppLog_Archive"
$i=0
while ((Get-ScheduledTask -TaskName 'AppLog_Archive').State  -ne 'Disabled') {
    $i++
	Write-Progress -Activity "Waiting on AppLog_Archive" -status $status -percentComplete ($i / 60)
}
write-host "AppLog_Archive is disabled"

$status = "Checking AppPrio"
$i=0
while ((Get-ScheduledTask -TaskName 'AppPrio').State  -ne 'Disabled') {
    $i++
	Write-Progress -Activity "Waiting on AppPrio" -status $status -percentComplete ($i / 60)
}
write-host "AppPrio is disabled"


$status = "Checking AppReports"
$i=0
while ((Get-ScheduledTask -TaskName 'AppReports').State  -ne 'Disabled') {
    $i++
	Write-Progress -Activity "Waiting on AppReports" -status $status -percentComplete ($i / 60)
}
write-host "AppReports is disabled"


$status = "Checking Main_Factory"
$i=0
while ((Get-ScheduledTask -TaskName 'Main_Factory').State  -ne 'Disabled') {
    $i++
	Write-Progress -Activity "Waiting on Main_Factory" -status $status -percentComplete ($i / 60)
}
write-host "Main_Factory is disabled"


$status = "Checking Recur_Factory"
$i=0
while ((Get-ScheduledTask -TaskName 'Recur_Factory').State  -ne 'Disabled') {
    $i++
	Write-Progress -Activity "Waiting on Recur_Factory" -status $status -percentComplete ($i / 60)
}
write-host "Recur_Factory is disabled"


$status = "Checking Report_Factory"
$i=0
while ((Get-ScheduledTask -TaskName 'Report_Factory').State  -ne 'Disabled') {
    $i++
	Write-Progress -Activity "Waiting on Report_Factory" -status $status -percentComplete ($i / 60)
}
write-host "Report_Factory is disabled"


$status = "Checking AppShiftHandoff"
$i=0
while ((Get-ScheduledTask -TaskName 'AppShiftHandoff').State  -ne 'Disabled') {
    $i++
	Write-Progress -Activity "Waiting on AppShiftHandoff" -status $status -percentComplete ($i / 60)
}
write-host "AppShiftHandoff is disabled"

write-host "All tasks disabled and not running."
$global:02FSLAStatus = "COMPLETE"