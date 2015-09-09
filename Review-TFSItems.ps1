[CmdletBinding()]
Param ( 
        [Microsoft.TeamFoundation.WorkItemTracking.Client.WorkItemCollection]$TFSItems = $global:TFSBacklog
    )

$i = 0
do {
        
    .\Review-TFSSingleItem $TFSItems[$i] $i $TFSItems.Count
    $choice = Read-Host
    switch($choice) {
        "B" {
            $i--
        }
        "Q" {
            exit
        }
        "G" {
            Write-Host Enter the number you want to go to: 
            [int]$i = read-host
            $i--
        }
        "A" {
            .\View-TFSAllItems.ps1
            read-host
        }
        "D" {
            $TFSItems[$i]["Description"] | Out-File .\description.htm
            Invoke-Expression .\description.htm
            start-sleep 2
            rm .\description.htm
        }
        default {
            $i++
        }
    }
    
} until($i -eq -1000) #Do until cancel