rm $HOME/.fonts
ln -s $HOME/toadfiles/fonts $HOME/.fonts
sudo fc-cache -f -v

cp $HOME/toadfiles/lxappearance/.gtkrc-2.0 $HOME/
mkdir -p $HOME/.config/gtk-3.0
cp $HOME/toadfiles/lxappearance/settings.ini $HOME/.config/gtk-3.0/

sudo chmod +x $HOME/toadfiles/i3/i3conky
sudo chmod +x $HOME/toadfiles/i3/lock

#mkdir $HOME/.config/sxhkd
#ln -s $HOME/dtfiles/bswpm/sxhkdrc $HOME/.config/sxhkd/sxhkdrc

#rm -Rf $HOME/toadfiles/vimperator
#rm $HOME/dtfiles/.vimperatorrc
#ln -s $HOME/dtfiles/vimperator $HOME/.vimperator
#ln -s $HOME/dtfiles/.vimperatorrc $HOME/.vimperatorrc
