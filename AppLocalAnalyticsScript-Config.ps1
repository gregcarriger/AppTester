#############################################################
# AppLocalAnalyticsScriptFiles-Config.ps1            #
# Programmers: Greg Carriger                                #
# Date: January 2021                                        #
#############################################################

# Personal Variables

# Variables

# Reset Run Status Variables if they don't exist
if(Test-Path variable:global:01Status) {
}else {
$global:01FSLAStatus = "Not Run"
$global:02FSLAStatus = "Not Run"
$global:03FSLAStatus = "Not Run"
$global:04FSLAStatus = "Not Run"
}

function global:Show-CodeMoveMenu {
    param (
        [string]$Title = 'FloorSight Code Move'
    )
    Clear-Host
    Write-Host "==== Scheduled Tasks on $([System.Net.Dns]::GetHostName()) ===="
    Write-Host "1: Press '1' Disable tasks on $([System.Net.Dns]::GetHostName())." $01FSLAStatus
    Write-Host "2: Press '2' Check tasks on $([System.Net.Dns]::GetHostName())." $02FSLAStatus
	Write-Host "3: Press '3' Standard run through on $([System.Net.Dns]::GetHostName())." $03FSLAStatus
	Write-Host "4: Press '4' Enable tasks on $([System.Net.Dns]::GetHostName())." $04FSLAStatus
	Write-Host "Q: Press 'Q' to quit."
}