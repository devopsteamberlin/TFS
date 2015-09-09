[CmdletBinding()]
Param ( 
     [Microsoft.TeamFoundation.WorkItemTracking.Client.WorkItem]$wit, [int]$i, [int]$count)

$i++
cls
Write-Host $i Of $count `n
Write-Host "Title: " -Nonewline -ForegroundColor Yellow
Write-Host $wit.Id - $wit.Title `n -ForegroundColor Gray
Write-Host "Assigned: " -Nonewline -ForegroundColor Yellow
Write-Host  $wit["Assigned To"] `n -ForegroundColor Gray
Write-Host "Iteration Path: " -Nonewline -ForegroundColor Yellow
Write-Host $wit["Iteration Path"] `n -ForegroundColor Gray
Write-Host "State: " -Nonewline -ForegroundColor Yellow
Write-Host $wit["State"] `n -ForegroundColor Gray
Write-Host "Linked Tasks: " -Nonewline -ForegroundColor Yellow
Write-host 0 `n -ForegroundColor Gray
Write-Host [D] Description [B] Back [G] Go To [A] All `
[Q] Quit `n