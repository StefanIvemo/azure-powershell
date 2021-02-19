#
# Module manifest for module 'Az.Batch'
#
# Generated by: Microsoft Corporation
#
# Generated on: 6/17/2020
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '3.1.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'c6da7084-6a9c-4c33-b162-0f2c6bfad401'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Batch service cmdlets for Azure Resource Manager in Windows PowerShell and PowerShell Core.

For information on Batch, please visit the following: https://docs.microsoft.com/azure/batch/'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Az.Accounts'; ModuleVersion = '2.2.5'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 'Microsoft.Azure.Batch.dll', 'Microsoft.Azure.Management.Batch.dll', 
               'Microsoft.Extensions.Primitives.dll', 
               'System.Runtime.CompilerServices.Unsafe.dll', 
               'Microsoft.WindowsAzure.Storage.dll', 
               'Microsoft.AspNetCore.WebUtilities.dll', 
               'Microsoft.Net.Http.Headers.dll', 'System.Text.Encodings.Web.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'Batch.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('Microsoft.Azure.PowerShell.Cmdlets.Batch.dll')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Remove-AzBatchAccount', 'Get-AzBatchAccount', 
               'Get-AzBatchAccountKey', 'New-AzBatchAccount', 
               'New-AzBatchAccountKey', 'Set-AzBatchAccount', 
               'New-AzBatchApplicationPackage', 'Get-AzBatchJobStatistic', 
               'Remove-AzBatchApplication', 'Remove-AzBatchApplicationPackage', 
               'Get-AzBatchApplicationPackage', 'Get-AzBatchApplication', 
               'Set-AzBatchApplication', 'New-AzBatchApplication', 
               'Get-AzBatchCertificate', 'Remove-AzBatchCertificate', 
               'New-AzBatchCertificate', 'Stop-AzBatchCertificateDeletion', 
               'Disable-AzBatchComputeNodeScheduling', 
               'Enable-AzBatchComputeNodeScheduling', 
               'Get-AzBatchRemoteLoginSetting', 'Remove-AzBatchComputeNode', 
               'Reset-AzBatchComputeNode', 'Restart-AzBatchComputeNode', 
               'Set-AzBatchComputeNodeUser', 'Get-AzBatchNodeFile', 
               'Get-AzBatchNodeFileContent', 
               'Get-AzBatchRemoteDesktopProtocolFile', 'Remove-AzBatchNodeFile', 
               'Disable-AzBatchJobSchedule', 'Enable-AzBatchJobSchedule', 
               'Set-AzBatchJobSchedule', 'Stop-AzBatchJobSchedule', 
               'Disable-AzBatchJob', 'Enable-AzBatchJob', 'New-AzBatchJob', 
               'Remove-AzBatchJob', 'Set-AzBatchJob', 'Stop-AzBatchJob', 
               'Get-AzBatchJob', 'Get-AzBatchJobPreparationAndReleaseTaskStatus', 
               'Disable-AzBatchAutoScale', 'Enable-AzBatchAutoScale', 
               'Get-AzBatchPoolStatistic', 'Get-AzBatchPoolUsageMetric', 
               'Get-AzBatchPool', 'Get-AzBatchSupportedImage', 'New-AzBatchPool', 
               'Remove-AzBatchPool', 'Set-AzBatchPool', 'Start-AzBatchPoolResize', 
               'Stop-AzBatchPoolResize', 'Test-AzBatchAutoScale', 
               'Get-AzBatchLocationQuota', 'Get-AzBatchSubtask', 'Get-AzBatchTask', 
               'New-AzBatchTask', 'Remove-AzBatchTask', 'New-AzBatchComputeNodeUser', 
               'Remove-AzBatchComputeNodeUser', 'Enable-AzBatchTask', 
               'Set-AzBatchTask', 'Stop-AzBatchTask', 'Get-AzBatchComputeNode', 
               'Get-AzBatchJobSchedule', 'New-AzBatchJobSchedule', 
               'Remove-AzBatchJobSchedule', 'Get-AzBatchTaskCount', 
               'Get-AzBatchPoolNodeCount', 
               'Start-AzBatchComputeNodeServiceLogUpload', 
               'New-AzBatchResourceFile'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Reactivate-AzBatchTask', 'Get-AzBatchSubscriptionQuotas', 
               'Get-AzBatchAccountKeys', 'Get-AzBatchJobStatistics', 
               'Get-AzBatchLocationQuotas', 'Get-AzBatchPoolNodeCounts', 
               'Get-AzBatchPoolStatistics', 'Get-AzBatchPoolUsageMetrics', 
               'Get-AzBatchRemoteLoginSettings', 'Get-AzBatchTaskCounts'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ResourceManager','ARM','Batch'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Updated Az.Batch to use ''Microsoft.Azure.Management.Batch'' SDK version to 11.0.0
* Added the ability to set the BatchAccount Identity in the ''New-AzBatchAccount'' cmdlet'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

