# Gereksinimleri yükle ve güncellemeleri tamamla
apt-get update
apt install apt-transport-https ca-certificates curl software-properties-common 

# Docker repolarını ekle
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Docker kurulumunu başlat
apt update
apt install docker-ce -y
apt install docker-compose

# Ekrana son durumu bildir
systemctl status docker
