#############################################################
# AppLocalAnalyticsScript-04.ps1                     #
# Programmers: Greg Carriger                                #
# Date: January 2020                                        #
#############################################################

$null = Enable-ScheduledTask AppAssy
write-host "AppAssy is"(Get-ScheduledTask AppAssy).state
$null = Enable-ScheduledTask AppCerts
write-host "AppCerts is"(Get-ScheduledTask AppCerts).state
$null = Enable-ScheduledTask AppConstraints
write-host "AppConstraints is"(Get-ScheduledTask AppConstraints).state
$null = Enable-ScheduledTask AppFab
write-host "AppFab is"(Get-ScheduledTask AppFab).state
$null = Enable-ScheduledTask AppLog_Archive
write-host "AppLog_Archive is"(Get-ScheduledTask AppLog_Archive).state
$null = Enable-ScheduledTask AppPrio
write-host "AppPrio is"(Get-ScheduledTask AppPrio).state
$null = Enable-ScheduledTask AppReports
write-host "AppReports is"(Get-ScheduledTask AppReports).state
$null = Enable-ScheduledTask Main_Factory
write-host "Main_Factory is"(Get-ScheduledTask Main_Factory).state
$null = Enable-ScheduledTask Recur_Factory
write-host "Recur_Factory is"(Get-ScheduledTask Recur_Factory).state
$null = Enable-ScheduledTask Report_Factory
write-host "Report_Factory is"(Get-ScheduledTask Report_Factory).state
$null = Enable-ScheduledTask AppShiftHandoff
write-host "AppShiftHandoff is"(Get-ScheduledTask AppShiftHandoff).state

$global:04FSLAStatus = "COMPLETE"