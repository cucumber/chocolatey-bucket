# Generated with JReleaser 1.23.0 at 2026-04-05T22:12:52.618436718+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'cucumber-messages-standalone-0.2.12-windows-x86_64'
$app_exe = Join-Path $app_home 'bin/cucumber-messages.bat'

Uninstall-BinFile -Name 'cucumber-messages' -Path $app_exe
