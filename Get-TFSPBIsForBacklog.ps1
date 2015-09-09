﻿[CmdletBinding()]
Param ( [Microsoft.TeamFoundation.Client.TfsTeamProjectCollection]
         $TFSCollection = $teamProjectCollection    
       )

$ws = $TFSCollection.GetService([type]"Microsoft.TeamFoundation.WorkItemTracking.Client.WorkItemStore")
#$ws.RefreshCache($true)
#$ws.SyncToCache() | out-null
$project = $ws.Projects[$areaPath]

$query = .\Get-TFSStoredQueryGUID.ps1 $project.QueryHierarchy $productBacklogQuery

$global:TFSBacklog = $ws.query($query.querytext)

Pop-Location
