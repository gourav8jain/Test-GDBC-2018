#
# Module for 'Microsoft.TeamFoundation.DistributedTask.Task.Common'
#

Import-Module '$PSScriptRoot\..\Microsoft.TeamFoundation.DistributedTask.Task.LegacySDK.dll'

Export-ModuleMember -Cmdlet @(
        'Add-TaskIssue',
        'Complete-Task',
        'Find-Files',
        'Get-LocalizedString',
        'Set-TaskProgress',
        'Set-TaskVariable',
        'Write-TaskDetail'
    )