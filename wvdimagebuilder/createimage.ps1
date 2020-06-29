# Install Azure PowerShell module
if ($PSVersionTable.PSEdition -eq 'Desktop' -and (Get-Module -Name AzureRM -ListAvailable)) {
    Write-Warning -Message ('Az module not installed. Having both the AzureRM and ' +
      'Az modules installed at the same time is not supported.')
} else {
    Install-Module -Name Az -AllowClobber -Scope CurrentUser
}

# While the Az.ImageBuilder and Az.ManagedServiceIdentity PowerShell modules are in preview, you must 
# install them separately using the Install-Module cmdlet with the AllowPrerelease parameter
'Az.ImageBuilder', 'Az.ManagedServiceIdentity' | ForEach-Object {Install-Module -Name $_ -AllowPrerelease}

# First time, must register providers
Register-AzProviderFeature -ProviderNamespace Microsoft.VirtualMachineImages -FeatureName VirtualMachineTemplatePreview

# Wait until registration completes, takes several minutes
Get-AzProviderFeature -ProviderNamespace Microsoft.VirtualMachineImages -FeatureName VirtualMachineTemplatePreview

# Register additional providers if necessary
Get-AzResourceProvider -ProviderNamespace Microsoft.Compute, Microsoft.KeyVault, Microsoft.Storage, Microsoft.VirtualMachineImages |
  Where-Object RegistrationState -ne Registered |
    Register-AzResourceProvider

# Define variables for information that will be used repeatedly
# Destination image resource group name
$imageResourceGroup = 'rg-WvdImageBuilder-01'

# Azure region
$location = 'EastUS'

# Name of the image to be created
$imageTemplateName = 'wvdImage01'

# Distribution properties of the managed image upon completion
$runOutputName = 'myDistResults'

# Create a resource group
New-AzResourceGroup -Name $imageResourceGroup -Location $location

# Assign rights to AzureImageBuilder
New-AzRoleAssignment -RoleDefinitionName "Contributor" -ApplicationId "cf32a0cc-373c-47c9-9156-0db11f6a6dfc" -ResourceGroupName $imageResourceGroup

$templateURI = "https://raw.githubusercontent.com/Everink/AzureImageBuilder/master/Templates/AzureImageBuilder-ManagedImage.json"
New-AzResourceGroupDeployment -ResourceGroupName $imageResourceGroup -TemplateUri $TemplateUri -OutVariable Output -Verbose
