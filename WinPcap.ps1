# Caminho para o instalador do aplicativo
$installerPath = "\\dominio\pasta1\pasta2\WireShark\WinPcap_4_1_3.exe"
# Nome do serviço
$serviceName = rpcapd

# Verifica se o instalador existe
if (Test-Path $installerPath) {
    # Executa o instalador
    Start-Process -FilePath $installerPath -Wait
    
    # Inicia o serviço
    Start-Service -Name $serviceName -Wait
    # Configura para iniciar automaticamente
    Set-Service -Name $serviceName -StartupType Automatic

} else {
    Write-Host "Caminho do instalador nÃ£o encontrado. Verifique o caminho do arquivo."
}
