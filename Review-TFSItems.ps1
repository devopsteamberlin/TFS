[CmdletBinding()]
Param ( 
        $TFSItems = $global:TFSBacklog
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
            .\View-TFSAllItems.ps1 $TFSItems
            read-host
        }
        "O" {            
             $url = "http://darklighter.zenith.co.uk:8080/tfs/" + `
                    "ZenithCollection/Accelerate%202.0/_workitems#_a=edit&id=" + $TFSItems[$i].Id
            Start-Process $url
            start-sleep 2            
        }       
        "L" {
            $linkedWits = .\Get-TFSLinkedItems.ps1 $TFSItems[$i]
            if ($linkedWits.Count -ne 0) {
                .\Review-TFSItems.ps1 $linkedWits
            }
        }
        default {
            $i++
        }       
    }
    If ($i -ge $TFSItems.Count) {
            $i--
        }
    
} until($i -eq -1000) #Do until cancel