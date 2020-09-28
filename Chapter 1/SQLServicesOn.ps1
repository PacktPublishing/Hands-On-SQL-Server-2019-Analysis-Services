
Set-Service 'MSSQL$DOWSQL2019' -StartupType Manual
Start-Service -Name 'MSSQL$DOWSQL2019' 

Set-Service 'MSOLAP$DOWSQL2019' -StartupType Manual
Start-Service -Name 'MSOLAP$DOWSQL2019' 

Set-Service 'MSOLAP$DOWSQL2019Tab' -StartupType Manual
Start-Service -Name 'MSOLAP$DOWSQL2019Tab'
