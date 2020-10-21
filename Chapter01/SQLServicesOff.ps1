
Set-Service 'MSSQL$DOWSQL2019' -StartupType Disabled
Stop-Service -Name 'MSSQL$DOWSQL2019' -Force

Set-Service 'MSOLAP$DOWSQL2019' -StartupType Disabled
Stop-Service -Name 'MSOLAP$DOWSQL2019' -Force

Set-Service 'MSOLAP$DOWSQL2019Tab' -StartupType Disabled
Stop-Service -Name 'MSOLAP$DOWSQL2019Tab' -Force

