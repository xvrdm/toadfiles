rm $HOME/.fonts
ln -s $HOME/toadfiles/fonts $HOME/.fonts
sudo fc-cache -f -v

cp $HOME/toadfiles/lxappearance/.gtkrc-2.0 $HOME/
mkdir -p $HOME/.config/gtk-3.0
cp $HOME/toadfiles/lxappearance/settings.ini $HOME/.config/gtk-3.0/

sudo chmod +x $HOME/toadfiles/i3/i3conky
sudo chmod +x $HOME/toadfiles/i3/lock

rm $HOME/toadfiles/.vimperatorrc
rm -rf $HOME/toadfiles/.vimperator
ln -s $HOME/toadfiles/vimperator $HOME/.vimperator
ln -s $HOME/toadfiles/.vimperatorrc $HOME/.vimperatorrc

#mkdir $HOME/.config/sxhkd
#ln -s $HOME/dtfiles/bswpm/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
