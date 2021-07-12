#############################################################
# AppLocalAnalyticsScript-01.ps1                     #
# Programmers: Greg Carriger                                #
# Date: January 2020                                        #
#############################################################

# stop scheduled tasks."

$null = Disable-ScheduledTask AppAssy
write-host "AppAssy is"(Get-ScheduledTask AppAssy).state
$null = Disable-ScheduledTask AppCerts
write-host "AppCerts is"(Get-ScheduledTask AppCerts).state
$null = Disable-ScheduledTask AppConstraints
write-host "AppConstraints is"(Get-ScheduledTask AppConstraints).state
$null = Disable-ScheduledTask AppFab
write-host "AppFab is"(Get-ScheduledTask AppFab).state
$null = Disable-ScheduledTask AppLog_Archive
write-host "AppLog_Archive is"(Get-ScheduledTask AppLog_Archive).state
$null = Disable-ScheduledTask AppPrio
write-host "AppPrio is"(Get-ScheduledTask AppPrio).state
$null = Disable-ScheduledTask AppReports
write-host "AppReports is"(Get-ScheduledTask AppReports).state
$null = Disable-ScheduledTask Main_Factory
write-host "Main_Factory is"(Get-ScheduledTask Main_Factory).state
$null = Disable-ScheduledTask Recur_Factory
write-host "Recur_Factory is"(Get-ScheduledTask Recur_Factory).state
$null = Disable-ScheduledTask Report_Factory
write-host "Report_Factory is"(Get-ScheduledTask Report_Factory).state
$null = Disable-ScheduledTask AppShiftHandoff
write-host "AppShiftHandoff is"(Get-ScheduledTask AppShiftHandoff).state

$global:01FSLAStatus = "COMPLETE"