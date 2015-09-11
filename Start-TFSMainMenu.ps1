[CmdletBinding()]
Param ()
begin {

    . C:\Dev\Scripts\tfs\Get-TFSConnection.ps1
}
process {
    cls
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
        2 {
            .\Start-TfsCurrentSprintReview.ps1   
        }
    }
}