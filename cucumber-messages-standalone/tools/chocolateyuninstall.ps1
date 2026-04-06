# Generated with JReleaser 1.23.0 at 2026-04-06T00:28:37.667294066Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'cucumber-messages-standalone-0.3.1-windows-x86_64'
$app_exe = Join-Path $app_home 'bin/cucumber-messages.bat'

Uninstall-BinFile -Name 'cucumber-messages' -Path $app_exe
