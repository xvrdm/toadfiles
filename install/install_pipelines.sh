sudo apt-get install build-essential libssl-dev libffi-dev python-dev

echo 'deb http://www.rabbitmq.com/debian/ testing main' | sudo tee /etc/apt/sources.list.d/rabbitmq.list
wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install rabbitmq-server
sudo rabbitmqctl add_user celery_user pass
sudo rabbitmqctl add_vhost celery_vhost
sudo rabbitmqctl set_permissions -p celery_vhost celery_user ".*" ".*" ".*"

pip install celery[rabbitmq]
pip install pandas jupyter pandas-datareader

