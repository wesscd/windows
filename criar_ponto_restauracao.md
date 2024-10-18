# Criar ponto de restauração com um click #

Criar arquivo REG com o seguinte script

```shell

[HKEY_CLASSES_ROOT\Directory\Background\shell\1 - CRIAR PONTO DE RESTAURAÇÃO]
"HasLUAShield"=""
"Icon"="SystemPropertiesProtection.exe"
[HKEY_CLASSES_ROOT\Directory\Background\shell\1 - CRIAR PONTO DE RESTAURAÇÃO\command]
@="PowerShell -windowstyle hidden -command \"Start-Process cmd -ArgumentList '/s,/c, PowerShell Checkpoint-Computer -Description \"Manual\" -RestorePointType \"MODIFY_SETTINGS\"' -Verb runAs\""
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore]
"SystemRestorePointCreationFrequency"=dword:00000000

```
