# Script para adicionar informações OEM no Windows
# Criado por César Marques

$Manufacturer = "Cesar Marques - Suporte em TI"
$Model = "Infraestrutura & Redes"
$SupportURL = "https://discord.gg/uHPEANRv"
$SupportHours = "Seg-Sex: 08h-18h"
$SupportPhone = "+55 16 99263-6487"
$LogoPath = "C:\Windows\oemlogo.bmp"

# Criar chaves no Registro
$regPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation"

Set-ItemProperty -Path $regPath -Name "Manufacturer" -Value $Manufacturer
Set-ItemProperty -Path $regPath -Name "Model" -Value $Model
Set-ItemProperty -Path $regPath -Name "SupportURL" -Value $SupportURL
Set-ItemProperty -Path $regPath -Name "SupportHours" -Value $SupportHours
Set-ItemProperty -Path $regPath -Name "SupportPhone" -Value $SupportPhone
Set-ItemProperty -Path $regPath -Name "Logo" -Value $LogoPath

Write-Host "Informações OEM adicionadas com sucesso!"
Pause
