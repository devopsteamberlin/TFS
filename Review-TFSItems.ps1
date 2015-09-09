[CmdletBinding()]
Param ( 
        [Microsoft.TeamFoundation.WorkItemTracking.Client.WorkItemCollection]$TFSItems = $global:TFSBacklog
    )

$i = 0
do {
        
    .\Review-TFSSingleItem $TFSItems[$i] $i $TFSItems.Count
    $choice = Read-Host
    switch($choice) {
        "b" {
            $i--
        }
        "q" {
            exit
        }
        default {
            $i++
        }
    }
    
} until($i -eq -1000) #Do until cancel