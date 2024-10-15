# Scripts para executar durante inicialização do sistema #


LOG
```shell
@echo off
REM Captura do hostname e IP
set hostname=%computername%
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| find "IPv4"') do set ip=%%a

REM Registro de desligamento para auditoria com IP e hostname
echo %date% %time% - Hostname: %hostname% - IP: %ip% - Início do script  >> \\SERVIDOR\DIR$\LOGS\inicializacao.log

´´´

# Scripts para executar durante desligamento do  sistema #
