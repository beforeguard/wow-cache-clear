# WoW Cache Clear

A PowerShell script to clear cache, interface, and settings folders for World of Warcraft game installations.

## Description

This script clears cache data from all World of Warcraft game versions by removing the following directories:
- **Cache** - Temporary cached game data
- **Interface** - User interface customizations and addon data
- **WTF** - World of Warcraft settings and configuration files

It supports all major WoW versions:
- World of Warcraft Retail
- World of Warcraft Classic
- World of Warcraft Classic Era
- World of Warcraft Anniversary Edition

## Usage

### Basic Usage
```powershell
.\wow-cache-clear.ps1
```

### With Custom Installation Path
```powershell
.\wow-cache-clear.ps1 -wowInstallPath "C:\Games\World of Warcraft"
```

## Requirements

- Windows PowerShell 5.0 or higher
- Administrator privileges (required to delete system directories)
- Valid World of Warcraft installation path

## Default Installation Path

The script defaults to: `Z:\BlizzardLibrary\World of Warcraft`

If your WoW installation is located elsewhere, provide the `-wowInstallPath` parameter.

## What Gets Deleted

The script will delete the following directories for each WoW version found:
- `<WoW_Install_Path>\_retail_\Cache`
- `<WoW_Install_Path>\_retail_\Interface`
- `<WoW_Install_Path>\_retail_\WTF`
- `<WoW_Install_Path>\_classic_\Cache`
- `<WoW_Install_Path>\_classic_\Interface`
- `<WoW_Install_Path>\_classic_\WTF`
- `<WoW_Install_Path>\_classic_era_\Cache`
- `<WoW_Install_Path>\_classic_era_\Interface`
- `<WoW_Install_Path>\_classic_era_\WTF`
- `<WoW_Install_Path>\_anniversary_\Cache`
- `<WoW_Install_Path>\_anniversary_\Interface`
- `<WoW_Install_Path>\_anniversary_\WTF`

## Warnings

⚠️ **This operation is permanent!** 
- Deleted cache and addon data cannot be recovered
- The script will re-download necessary cache data on next game launch
- Addon settings stored in WTF will be lost
- Consider backing up your WTF folder if you want to preserve custom configurations

## Execution Policy

If you encounter an execution policy error, run:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## Examples

**Example 1: Clear cache from default location**
```powershell
.\wow-cache-clear.ps1
```

**Example 2: Clear cache from custom Blizzard Battle.net installation**
```powershell
.\wow-cache-clear.ps1 -wowInstallPath "D:\Games\Blizzard\World of Warcraft"
```
