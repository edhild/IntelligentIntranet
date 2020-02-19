915c240e-a6cc-49b8-8b2c-0bff8b553ed3
915c240e-a6cc-49b8-8b2c-0bff8b553ed3

https://m365x722053.sharepoint.com/sites/GeicoNews/




#Connect to Site
$cred = Get-Credential -UserName "meganb@M365x722053.onmicrosoft.com" -Message "Please enter password for $username"

Connect-PnPOnline -Credentials $cred -Url "https://m365x722053.sharepoint.com/sites/GeicoNews/"

Get-PnPFeature -Scope Site -Identity 915c240e-a6cc-49b8-8b2c-0bff8b553ed3

$Feature = Get-PnPFeature -Scope Web -Identity 915c240e-a6cc-49b8-8b2c-0bff8b553ed3

Enable-SPFeature –Identity Ratings –url https://m365x722053.sharepoint.com/sites/GeicoNews/

#Get the Feature status
If($Feature.DefinitionId -eq $null)
{   
    #sharepoint online powershell enable feature
    Write-host -f Yellow "Activating Feature..."
    Enable-PnPFeature -Scope Site -Identity 915c240e-a6cc-49b8-8b2c-0bff8b553ed3 -Force
    Disable-PnPFeature -Scope Site -Identity 915c240e-a6cc-49b8-8b2c-0bff8b553ed3 -Force
 
    Write-host -f Green "Feature Activated Successfully!"
}
Else
{
    Write-host -f Yellow "Feature is already active!"
}


Disconnect-PnPOnline