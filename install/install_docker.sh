sudo apt-get install -y \ 
	apt-transport-https \
	ca-certificates

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

sudo sh -c "echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get purge lxc-docker
apt-cache policy docker-engine

sudo apt-get install -y \
	linux-image-extra-$(uname -r) \
	apparmor \
	docker-engine

sudo service start docker

sudo groupadd docker
sudo usermod -aG docker $USER

mkdir -p $HOME/tmp
curl -L https://github.com/docker/compose/releases/download/1.14.0/docker-compose-`uname -s`-`uname -m` > $HOME/tmp/docker-compose 
sudo mv $HOME/tmp/docker-compose /usr/local/bin/
sudo chmod +x /usr/local/bin/docker-compose
