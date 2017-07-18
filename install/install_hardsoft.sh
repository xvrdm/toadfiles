sudo apt-get update && sudo apt-get upgrade

sudo apt-get install -y \
    git curl vlc vim

sudo apt-get install -y \
    xbacklight \
    thunar \
    lxappearance \
    gnome-icon-theme-full \
    consolekit 

wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key  
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update
sudo apt-get install -y arc-theme

sudo add-apt-repository ppa:moka/daily
sudo apt-get update
sudo apt-get install -y moka-icon-theme


