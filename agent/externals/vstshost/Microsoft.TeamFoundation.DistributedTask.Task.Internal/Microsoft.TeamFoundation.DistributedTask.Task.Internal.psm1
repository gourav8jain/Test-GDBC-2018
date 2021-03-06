#
# Module for 'Microsoft.TeamFoundation.DistributedTask.Task.Internal'
#

Import-Module '$PSScriptRoot\..\Microsoft.TeamFoundation.DistributedTask.Task.LegacySDK.dll'

Export-ModuleMember -Cmdlet @(
        'Add-BuildArtifactLink',
        'Add-BuildAttachment',
        'Convert-String',
        'Copy-BuildArtifact',
        'Get-JavaDevelopmentKitPath',
        'Get-MSBuildLocation',
        'Get-ServiceEndpoint',
        'Get-TaskVariable',
        'Get-TfsClientCredentials',
        'Get-ToolPath',
        'Get-VisualStudioPath',
        'Get-VssConnection',
        'Get-X509Certificate',
        'Invoke-Ant',
        'Invoke-BatchScript',
        'Invoke-Maven',
        'Invoke-MSBuild',
        'Invoke-Tool',
        'Invoke-VSTest',
        'Publish-BuildArtifact',
        'Register-XamarinLicense',
        'Unregister-XamarinLicense'
    )
