#!/bin/bash

# Atualiza a lista de pacotes e faz upgrade
sudo apt update && sudo apt full-upgrade -y

# Instala apt-transport-https
sudo apt install -y apt-transport-https

# Cria o arquivo de repositório do Tor e adiciona o conteúdo
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org jammy main
deb-src [arch=amd64 signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org jammy main" | sudo tee /etc/apt/sources.list.d/tor.list

# Baixa e instala a chave GPG do repositório Tor
sudo su -c "wget -qO- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --dearmor | tee /usr/share/keyrings/tor-archive-keyring.gpg >/dev/null"
