# Generated with JReleaser 1.23.0 at 2026-04-06T01:05:53.970181647Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'cucumber-messages-standalone-0.3.4-windows-x86_64'
$app_exe = Join-Path $app_home 'bin/cucumber-messages.bat'

Install-ChocolateyZipPackage `
    -PackageName 'cucumber-messages' `
    -Url 'https://github.com/cucumber/messages-cli/releases/download/v0.3.4/cucumber-messages-standalone-0.3.4-windows-x86_64.zip' `
    -Checksum '76fa82d88ecf7521aa66bcf44c7f888379377bd884b5d0f304e292d3a97f2579' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'cucumber-messages' -Path $app_exe
