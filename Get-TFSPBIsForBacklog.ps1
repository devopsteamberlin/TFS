[CmdletBinding()]
Param ( [Microsoft.TeamFoundation.Client.TfsTeamProjectCollection]
         $TFSCollection = $teamProjectCollection    
       )

$ws = $TFSCollection.GetService([type]"Microsoft.TeamFoundation.WorkItemTracking.Client.WorkItemStore")
#$ws.RefreshCache($true)
#$ws.SyncToCache() | out-null
$project = $ws.Projects[$areaPath]

$query = .\Get-TFSStoredQueryGUID.ps1 $project.QueryHierarchy $productBacklogQuery

$items = $ws.query($query.querytext)

$items | foreach {
    Write-host $_.Title
    Write-host $_.Status
    read-host
}

Pop-Location
