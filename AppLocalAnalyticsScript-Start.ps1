#############################################################
# AppLocalAnalyticsScript-Start.ps1                  #
# Programmers: Greg Carriger                                #
# Date: January 2021                                        #
#############################################################

# Force elevated

param([switch]$Elevated)

function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        # tried to elevate, did not work, aborting
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}

# Load variables
$PSScriptRoot
invoke-expression -Command $PSScriptRoot\AppLocalAnalyticsScript-Config.ps1

do
 {
    Show-CodeMoveMenu
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
	$global:01FSLAStatus = "Started"
    invoke-expression -Command $PSScriptRoot\AppLocalAnalyticsScriptFiles\AppLocalAnalyticsScript-01.ps1
    } '2' {
    $global:02FSLAStatus = "Started"
	invoke-expression -Command $PSScriptRoot\AppLocalAnalyticsScriptFiles\AppLocalAnalyticsScript-02.ps1
    } '3' {
	$global:03FSLAStatus = "Started"
    invoke-expression -Command $PSScriptRoot\AppLocalAnalyticsScriptFiles\AppLocalAnalyticsScript-03.ps1
    } '4' {
    $global:04FSLAStatus = "Started"
	invoke-expression -Command $PSScriptRoot\AppLocalAnalyticsScriptFiles\AppLocalAnalyticsScript-04.ps1
    }

	}
pause
 }
 until ($selection -eq 'q')