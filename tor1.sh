#!/bin/bash

# Atualizar a lista de pacotes e fazer um upgrade completo
sudo apt update && sudo apt full-upgrade -y

# Instalar apt-transport-https
sudo apt install apt-transport-https -y

# Criar o arquivo de repositório do Tor e adicionar o conteúdo
sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/tor.list
deb     [arch=amd64 signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org jammy main
deb-src [arch=amd64 signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org jammy main
EOF'

# Instruções finais
echo "realize: "sudo su", cole este comando e de exit"
echo "wget -qO- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --dearmor | tee /usr/share/keyrings/tor-archive-keyring.gpg >/dev/null"
