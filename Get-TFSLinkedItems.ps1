[CmdletBinding()]
Param ( 
        [Microsoft.TeamFoundation.WorkItemTracking.Client.WorkItem]$wit = $task
      )

$wits = @()
$links = $wit.links | where {$_.LinkTypeEnd.Name -eq "Child"}
foreach ($link in $links) {
    $item = $ws.GetWorkItem($link.RelatedWorkItemId)   
    if ($item["State"] -ne "Removed") {
        $wits += $item
    }
}

$wits