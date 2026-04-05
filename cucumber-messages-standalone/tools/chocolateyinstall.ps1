# Generated with JReleaser 1.23.0 at 2026-04-05T22:48:33.954541881Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'cucumber-messages-standalone-0.2.14-windows-x86_64'
$app_exe = Join-Path $app_home 'bin/cucumber-messages.bat'

Install-ChocolateyZipPackage `
    -PackageName 'cucumber-messages' `
    -Url 'https://github.com/cucumber/messages-cli/releases/download/v0.2.14/cucumber-messages-standalone-0.2.14-windows-x86_64.zip' `
    -Checksum '85289573397437b939cf83a54a9c36b636c60db651f7301d6b0af2e7caf00987' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'cucumber-messages' -Path $app_exe
