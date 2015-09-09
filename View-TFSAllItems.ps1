[CmdletBinding()]
Param ( 
        [Microsoft.TeamFoundation.WorkItemTracking.Client.WorkItemCollection]$TFSItems = $global:TFSBacklog
     )

$assignedTo = @{label="Assigned To";expression={$_["Assigned To"]}}
$TFSItems | Format-Table -Wrap -Property Id, Title, State, $assignedTo