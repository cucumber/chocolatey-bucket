# Generated with JReleaser 1.23.0 at 2026-04-06T00:08:46.772505111Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'cucumber-messages-standalone-0.3.0-windows-x86_64'
$app_exe = Join-Path $app_home 'bin/cucumber-messages.bat'

Install-ChocolateyZipPackage `
    -PackageName 'cucumber-messages' `
    -Url 'https://github.com/cucumber/messages-cli/releases/download/v0.3.0/cucumber-messages-standalone-0.3.0-windows-x86_64.zip' `
    -Checksum '2c5f125ae4402e9009c6e07e7f87aafd82682fbe8314aa597976bee45d3ed505' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'cucumber-messages' -Path $app_exe
