
$env:PSModulePath

#Get-Module -ListAvailable

Import-Module -Name WindowsUpdate

Get-Command -Module WindowsUpdate

#Get-WindowsUpdateLog

Import-Module -name WindowsUpdate -Force

Remove-Module -Name WindowsUpdate

New-ModuleManifest -Path "C:\Users\chamersley\Documents\WindowsPowerShell\Modules\Configurations\Configurations.psd1" -Description "This is the configurations module" -RootModule Configurations.psm1

Get-Module -Name Configurations -ListAvailable

Get-Configuration

Remove-Module -Name Configurations

Find-Module -Name AzureAD

Import-Module -Name AzureAD

#Connect-AzureAD