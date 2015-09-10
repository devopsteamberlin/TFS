[CmdletBinding()]
Param ()

cls
Write-Host Reviewing Backlog for: `n -ForegroundColor Yellow
Write-Host TFS Server Collection `(`$tfsServerCollection`):' ' -ForegroundColor Gray -NoNewline 
Write-Host $tfsServerCollection 
Write-Host Project `(`$areaPath`):' ' -ForegroundColor Gray -NoNewline
Write-Host $areaPath `n

$tfsConnection = .\Get-TFSConnection.ps1

Write-Host Getting Server connection:' ' -ForegroundColor Gray -NoNewline

if ($tfsConnection.GetType().name -eq 'TfsTeamProjectCollection') {
    Write-Host Success -ForegroundColor Green
}else{
    Write-Host Failed -ForegroundColor Red
}

Start-Sleep 1

.\Get-TFSPBIsForCurrentSprint.ps1 $tfsConnection