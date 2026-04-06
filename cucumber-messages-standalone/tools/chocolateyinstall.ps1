# Generated with JReleaser 1.23.0 at 2026-04-06T00:28:37.667294066Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'cucumber-messages-standalone-0.3.1-windows-x86_64'
$app_exe = Join-Path $app_home 'bin/cucumber-messages.bat'

Install-ChocolateyZipPackage `
    -PackageName 'cucumber-messages' `
    -Url 'https://github.com/cucumber/messages-cli/releases/download/v0.3.1/cucumber-messages-standalone-0.3.1-windows-x86_64.zip' `
    -Checksum 'b5a23e3719efd7954a4ad10eae2158f44010453e1432fd0aec6ee56bef92eb30' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'cucumber-messages' -Path $app_exe
