[CmdletBinding()]
Param ( 
     [Microsoft.TeamFoundation.WorkItemTracking.Client.WorkItem]$wit, [int]$i, [int]$count
     )

$i++
cls
Write-Host $i Of $count `n
If ($wit["Work Item Type"] -like "Product*" -or $wit["Work Item Type"] -like "Bug*" ) {
    Write-Host "Title: " -Nonewline -ForegroundColor Red
    Write-Host $wit.Id - $wit.Title `n -ForegroundColor Gray
    Write-Host "Assigned: " -Nonewline -ForegroundColor Yellow
    Write-Host  $wit["Assigned To"] `n -ForegroundColor Gray
    Write-Host "Iteration Path: " -Nonewline -ForegroundColor Yellow
    Write-Host $wit["Iteration Path"] `n -ForegroundColor Gray
    Write-Host "State: " -Nonewline -ForegroundColor Yellow
    Write-Host $wit["State"] `n -ForegroundColor Gray
    $childWits = .\Get-TFSLinkedItems.ps1 $TFSItems[$i]
    $childWits | Format-Table -Property ID, Title, State
<#    Write-Host "Linked Items: " -Nonewline -ForegroundColor Yellow
    $ChildCount = $wit.links | where {$_.LinkTypeEnd.Name -eq "Child"}
    Write-host $ChildCount.Count `n -ForegroundColor Gray#>
} Else {    
    Write-Host "Title: " -Nonewline -ForegroundColor Green
    Write-Host $wit.Id - $linkedWIT.Title `n -ForegroundColor Gray
    Write-Host "Assigned: " -Nonewline -ForegroundColor Yellow
    Write-Host  $wit["Assigned To"] `n -ForegroundColor Gray
    Write-Host "Iteration Path: " -Nonewline -ForegroundColor Yellow
    Write-Host $wit["Iteration Path"] `n -ForegroundColor Gray
    Write-Host "State: " -Nonewline -ForegroundColor Yellow
    Write-Host $wit["State"] `n -ForegroundColor Gray
    Write-Host "Remaining Work: " -Nonewline -ForegroundColor Yellow
    Write-Host $wit["Remaining Work"] `n -ForegroundColor Gray
    Write-Host "Completed Work: " -Nonewline -ForegroundColor Yellow
    Write-Host $wit["Completed Work"] `n -ForegroundColor Gray
}
Write-Host [O] Open [L] Linked Items [B] Back [G] Go To [A] All `
[Q] Quit `n