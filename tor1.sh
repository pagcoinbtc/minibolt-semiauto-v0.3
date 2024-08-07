#!/bin/bash

# Atualiza a lista de pacotes e realiza a atualização completa do sistema
sudo apt update && sudo apt full-upgrade -y

# Instala o apt-transport-https
sudo apt install apt-transport-https -y

# Cria o arquivo tor.list e adiciona o conteúdo necessário
TOR_LIST_FILE="/etc/apt/sources.list.d/tor.list"
echo "deb     [arch=amd64 signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org jammy main" | sudo tee $TOR_LIST_FILE
echo "deb-src [arch=amd64 signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org jammy main" | sudo tee -a $TOR_LIST_FILE

# Confirmação de sucesso
echo "Script executado com sucesso!"
