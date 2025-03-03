# Comandos para otimização #


MADU
shell``
powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('http://tweaks.madu.gg')"
``

OEM

shell``
Set-ExecutionPolicy Bypass -Scope Process -Force
iex (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wesscd/windows/refs/heads/main/oem.ps1" -UseBasicParsing).Content

``
