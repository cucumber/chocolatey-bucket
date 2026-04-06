# Generated with JReleaser 1.23.0 at 2026-04-06T00:30:04.792534656Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'cucumber-messages-standalone-0.3.2-windows-x86_64'
$app_exe = Join-Path $app_home 'bin/cucumber-messages.bat'

Install-ChocolateyZipPackage `
    -PackageName 'cucumber-messages' `
    -Url 'https://github.com/cucumber/messages-cli/releases/download/v0.3.2/cucumber-messages-standalone-0.3.2-windows-x86_64.zip' `
    -Checksum '632827397de997de64eb2e3b9e4de996ef9acf146f965923eea7f2980728e593' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'cucumber-messages' -Path $app_exe
