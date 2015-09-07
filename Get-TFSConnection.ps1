
[CmdletBinding()]
Param ()

# Load Snapping
if ((Get-PSSnapin -name Microsoft.TeamFoundation.PowerShell -Erroraction silentlycontinue) -eq $null)
{
	Add-PSSnapin Microsoft.TeamFoundation.PowerShell
	write-host "TFS Snappin Added"
}

[void][System.Reflection.Assembly]::LoadWithPartialName("Microsoft.TeamFoundation.Client")  
[void][System.Reflection.Assembly]::LoadWithPartialName("Microsoft.TeamFoundation.Build.Client")  
[void][System.Reflection.Assembly]::LoadWithPartialName("Microsoft.TeamFoundation.Build.Common") 
[void][System.Reflection.Assembly]::LoadWithPartialName("Microsoft.TeamFoundation.WorkItemTracking.Client") 

$teamProjectCollection = [Microsoft.TeamFoundation.Client.TfsTeamProjectCollectionFactory]::
                            GetTeamProjectCollection($tfsServerCollection)
$teamProjectCollection
