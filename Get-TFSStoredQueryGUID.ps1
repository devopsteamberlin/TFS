[CmdletBinding()]
Param (
        [Microsoft.TeamFoundation.WorkItemTracking.Client.QueryFolder]$queryFolder,
        $queryName = $productBacklogQuery
       )

foreach ($subQuery in $queryFolder) {
    if ($subQuery -is [Microsoft.TeamFoundation.WorkItemTracking.Client.QueryFolder])
    {
        if($subQuery.Contains($queryName))
        {
            return $subQuery[$queryName]
        }            
        $subQuery | Format-Table -Property Name, Path -Wrap            
        .\Get-TFSStoredQueryGUID.ps1 $subQuery $queryName            
    }
}
