param(
    [string]$wowInstallPath = "Z:\BlizzardLibrary\World of Warcraft"
)

$wowInstallPath = "Z:\BlizzardLibrary\World of Warcraft"
$wowVersionFolders = "_anniversary_", "_classic_", "_classic_era_", "_retail_"
$wowCacheFolders = "Cache", "Interface", "WTF"

foreach ($wowVersionFolder in $wowVersionFolders)
{
    foreach ($cacheFolder in $wowCacheFolders)
    {
        $fullCacheFolderPath = Join-Path -Path $wowInstallPath -ChildPath $wowVersionFolder |
            Join-Path -ChildPath $cacheFolder
        if (Test-Path $fullCacheFolderPath)
        {
            Write-Host "Clearing cache folder: $($fullCacheFolderPath)"
            Remove-Item -Path $fullCacheFolderPath -Recurse -Force
        }
    }
}