# Generated with JReleaser 1.23.0 at 2026-04-05T22:12:52.618436718+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'cucumber-messages-standalone-0.2.12-windows-x86_64'
$app_exe = Join-Path $app_home 'bin/cucumber-messages.bat'

Install-ChocolateyZipPackage `
    -PackageName 'cucumber-messages' `
    -Url 'https://github.com/cucumber/messages-cli/releases/download/v0.2.12/cucumber-messages-standalone-0.2.12-windows-x86_64.zip' `
    -Checksum 'f0e3835ebb38f46ff77b3ca8ed298562b63d00015e25c406c56a90e99ee505c0' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'cucumber-messages' -Path $app_exe
