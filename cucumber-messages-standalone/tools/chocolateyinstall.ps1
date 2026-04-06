# Generated with JReleaser 1.23.0 at 2026-04-06T00:30:33.173990489Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'cucumber-messages-standalone-0.3.3-windows-x86_64'
$app_exe = Join-Path $app_home 'bin/cucumber-messages.bat'

Install-ChocolateyZipPackage `
    -PackageName 'cucumber-messages' `
    -Url 'https://github.com/cucumber/messages-cli/releases/download/v0.3.3/cucumber-messages-standalone-0.3.3-windows-x86_64.zip' `
    -Checksum 'bccbc252a1a390584547a551a0726004d5e583642221a8e22b8e97a490567b31' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'cucumber-messages' -Path $app_exe
