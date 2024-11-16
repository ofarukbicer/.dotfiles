# Portainer için volume oluşturuyoruz
docker volume create portainer_data

# Portaineri docker repolarından çekip deploy ediyoruz
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:2.21.4

# Çalıştığına dair bilgi için
docker ps

# https://localhost:9443