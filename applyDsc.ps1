$ScriptPath = Split-Path $MyInvocation.MyCommand.Path

. "$ScriptPath\website.ps1"

WebSite -NodeName localhost -WebSiteName test -OutputPath $output

Start-DscConfiguration -Path .\WebSite -ComputerName localhost -Wait -Force -Verbose 