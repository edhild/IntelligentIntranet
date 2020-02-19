
Connect-SPOService -Url https://M365x722053-admin.sharepoint.com

Get-SPOHideDefaultThemes
Get-SPOTheme

Set-SPOHideDefaultThemes $true

$themepalette = @{
"themePrimary" = "#194b93";
"themeLighterAlt" = "#010306";
"themeLighter" = "#ef7014";
"themeLight" = "#ef7014";
"themeTertiary" = "#0f2e59";
"themeSecondary" = "#164382";
"themeDarkAlt" = "#ef7014";
"themeDark" = "#ef7014";
"themeDarker" = "#688ec3";
"neutralLighterAlt" = "#faf9f8";
"neutralLighter" = "#f3f2f1";
"neutralLight" = "#edebe9";
"neutralQuaternaryAlt" = "#e1dfdd";
"neutralQuaternary" = "#ffffff";
"neutralTertiaryAlt" = "#c8c6c4";
"neutralTertiary" = "#222222";
"neutralSecondary" = "#3773ca";
"neutralPrimaryAlt" = "#636363";
"neutralPrimary" = "#6f6f6f";
"neutralDark" = "#929292";
"black" = "#afafaf";
"white" = "#ffffff";
"accent" = "#ef7014"; 
"backgroundOverlay" = "#194b93";
}

Add-SPOTheme -Name "Geico" -Palette $themepalette -IsInverted $false -Overwrite

#Parameters
$SiteURL = "https://m365x722053.sharepoint.com/sites/geicohome"
$ThemeName = "Geico"
$Url = "https://m365x722053-admin.sharepoint.com"


$ThemeName = "Geico"
 
#Connect to Site
$cred = Get-Credential -UserName "meganb@M365x722053.onmicrosoft.com" -Message "Please enter password for $username"
Connect-PnPOnline -Credentials $cred -Url $Url
 
#Apply Theme
Set-PnPWebTheme -Theme $ThemeName -WebUrl $SiteURL

Disconnect-PnPOnline
#Read more: https://www.sharepointdiary.com/2019/07/sharepoint-online-apply-modern-theme-using-powershell.html#ixzz6D0xGkvxB


