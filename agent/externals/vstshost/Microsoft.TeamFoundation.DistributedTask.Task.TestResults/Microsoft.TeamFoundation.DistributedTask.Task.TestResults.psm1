#
# Module for 'Microsoft.TeamFoundation.DistributedTask.Task.TestResults'
#

Import-Module '$PSScriptRoot\..\Microsoft.TeamFoundation.DistributedTask.Task.LegacySDK.dll'

Export-ModuleMember -Cmdlet @(
        'Invoke-ResultPublisher',
        'Publish-TestResults'
    )
