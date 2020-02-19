
Connect-SPOService -Url https://M365x722053-admin.sharepoint.com

Set-SPOOrgNewsSite -OrgNewsSiteUrl https://m365x722053.sharepoint.com/sites/geicohome
Set-SPOOrgNewsSite -OrgNewsSiteUrl https://m365x722053.sharepoint.com/sites/geiconews
Set-SPOOrgNewsSite -OrgNewsSiteUrl https://m365x722053.sharepoint.com/sites/geicoconnection 
Remove-SPOOrgNewsSite -OrgNewsSiteUrl https://m365x722053.sharepoint.com/sites/ThePerspective

