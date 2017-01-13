rm $HOME/.fonts
ln -s $HOME/dtfiles/fonts $HOME/.fonts
sudo fc-cache -f -v

cp $HOME/dtfiles/lxappearance/.gtkrc-2.0 $HOME/
mkdir $HOME/.config/gtk-3.0
cp $HOME/dtfiles/lxappearance/settings.ini $HOME/.config/gtk-3.0/

sudo chmod +x $HOME/dtfiles/i3/i3conky
sudo chmod +x $HOME/dtfiles/i3/lock

rm $HOME/.config/i3/config
ln -s $HOME/dtfiles/i3/config $HOME/.config/i3/config

mkdir $HOME/.config/sxhkd
ln -s $HOME/dtfiles/bswpm/sxhkdrc $HOME/.config/sxhkd/sxhkdrc

rm -Rf $HOME/dtfiles/vimperator
rm $HOME/dtfiles/.vimperatorrc
ln -s $HOME/dtfiles/vimperator $HOME/.vimperator
ln -s $HOME/dtfiles/.vimperatorrc $HOME/.vimperatorrc
