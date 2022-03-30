﻿$platformPackageName = 'resharper-platform'
$packageName = 'teamCityAddin'
$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$commonPath = $(Split-Path -parent $(Split-Path -parent $scriptPath))
$filename = 'JetBrains.dotUltimate.2022.1.EAP8.Checked.exe'

$installPath = Join-Path  (Join-Path $commonPath $platformPackageName) $filename
Uninstall-ChocolateyPackage $packageName 'exe' '/Silent=True /SpecificProductNamesToRemove=teamCityAddin /VsVersion=*' $installPath
