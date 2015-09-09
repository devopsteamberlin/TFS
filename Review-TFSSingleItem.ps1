[CmdletBinding()]
Param ( 
     [Microsoft.TeamFoundation.WorkItemTracking.Client.WorkItem]$wit, [int]$i, [int]$count)

$i++
cls
Write-Host $i Of $count
Write-Host `nTitle: $wit.Id - $wit.Title `n 
Write-Host Assigned: $wit["Assigned To"] `n
Write-Host [S] Sprint [T] Title [C] Complete [AD] Add Task [B] Back [O] Open [G] Go To [D] Date [A] All `
[Q] Quit `n.