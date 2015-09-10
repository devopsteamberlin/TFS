cls
#Push-Location C:\dev\Scripts\tfs
[string] $tfsServerCollection = "http://darklighter.zenith.co.uk:8080/tfs/ZenithCollection"
[string] $areaPath = "Accelerate 2.0"
[string] $currentSprintQuery = "Current Sprint"
[string] $productBacklogQuery = "Backlog PBIs"
[void][System.Reflection.Assembly]::LoadWithPartialName("Microsoft.TeamFoundation.Client")  
[void][System.Reflection.Assembly]::LoadWithPartialName("Microsoft.TeamFoundation.Build.Client")  
[void][System.Reflection.Assembly]::LoadWithPartialName("Microsoft.TeamFoundation.Build.Common") 
[void][System.Reflection.Assembly]::LoadWithPartialName("Microsoft.TeamFoundation.WorkItemTracking.Client") 

Write-Host Welcome to TFS Review `n -ForegroundColor Yellow
Write-Host TFS Server Collection `(`$tfsServerCollection`):' ' -ForegroundColor Gray -NoNewline 
Write-Host $tfsServerCollection 
Write-Host Project `(`$areaPath`):' ' -ForegroundColor Gray -NoNewline
Write-Host $areaPath `n
Write-Host Please choose from the following options: `n -ForegroundColor Green
Write-Host 1. Review Backlog PBIs -ForegroundColor Gray
Write-Host 2. Review Sprint PBIs -ForegroundColor Gray
$choice = Read-Host

 switch($choice) {
    1 {
        .\Start-TfsBacklogReview.ps1
    }
}
    