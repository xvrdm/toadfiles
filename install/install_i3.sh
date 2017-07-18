## Basic i3
sudo apt-get update && sudo apt-get install -y \
    i3 \
    i3lock scrot imagemagick \
    i3blocks conky \
    rofi \
    arandr compton \
    feh \
    pavucontrol

xrandr --output eDP-1 --primary

## Overwrite with i3-gaps from Airblader
# Dependencies as listed on Airblader/i3
sudo apt-get install -y \
    libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
    libxcb-util0-dev libxcb-icccm4-dev libyajl-dev \
    libstartup-notification0-dev libxcb-randr0-dev \
    libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
    libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
    xutils-dev graphviz doxygen

# Dependencies not listed but required during install
sudo apt-get install -y autoconf

mkdir ~/bin
cd ~/bin

# Install xcb-util-xrm
wget -O /tmp/xcb-util-xrm.tar.gz https://github.com/Airblader/xcb-util-xrm/releases/download/v1.0/xcb-util-xrm-1.0.tar.gz
mkdir xcb-util-xrm
tar -C ~/bin/xcb-util-xrm -zxvf /tmp/xcb-util-xrm.tar.gz 
cd xcb-util-xrm
cd xcb-util-xrm-1.0
./configure 
make 
sudo make install

# Install i3gaps
cd ~/bin
git clone https://www.github.com/Airblader/i3 i3-gaps 
cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc && make 
sudo make install

# Install i3 config
rm $HOME/.config/i3/config                                             
mkdir -p $HOME/.config/i3/                                             
ln -s $HOME/toadfiles/i3/config $HOME/.config/i3/config



# Install polybar
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
sudo apt-get update
sudo apt-get install -y polybar
mkdir -p ~/.config/polybar
ln -s $HOME/toadfiles/i3/polybar/config2 $HOME/.config/polybar/config 

