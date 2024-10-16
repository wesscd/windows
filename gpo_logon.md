# Papel de parede tela de logon #

1. Criar GPO
2. Editar GPO
	- 
	- Configuração do computado > Preferencias > Configurações do Windows > Registro.
	
	- Criar registros
		- Chave 1
			- Chave: HKEY_LOCAL_MACHINE
			- Caminho da chave: SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP
	 		- Nome do valor: LockScreenImagemStatus
			- Tipo de valor: REG_DWORD
			- Dados de Valor: 0
			
		- Chave 2
			- Chave: HKEY_LOCAL_MACHINE
			- Caminho da chave: SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP
			- Nome do valor: LockScreenImagePath
			- Tipo de valor: REG_SZ
			- Dados de Valor: \\\SERVIDOR\IMAGENS$\Tela.jpg
			
		- Chave 3
			-  Chave:  HKEY_LOCAL_MACHINE
			- Caminho da chave: SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP
			- Nome do valor: LockScreenImageUrl
			- Tipo de valor: REG_SZ
			- Dados de Valor: \\\SERVIDOR\IMAGENS$\Tela.jpg

		Ainda na mesma GPO
	- Configuração do Computador > Políticas > Modelos Administrativos > Painel de Controle > Personalização.
		- Ativar "Forçar uma imagem padrão especifica de tela de bloqueio e de logon"
			- Caminho: *Este deve ser preenchido com caminho local da imagem.*
