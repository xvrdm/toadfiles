mkdir -p ~/tmp
wget -O ~/tmp/get-pip.py https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install virtualenv
sudo pip install virtualenvwrapper

# Add to bashrc
# export WORKON_HOME=~/dev/python/envs
# mkdir -p $WORKON_HOME
# export VIRTUALENV_PYTHON=/usr/bin/python3
# source /usr/local/bin/virtualenvwrapper.sh
