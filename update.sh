# This is a script that when run updates the files in this repo with the files on my system

cp -r ~/.config/polybar/* polybar/
cp -r ~/.config/spicetify/* spicetify
cp -r ../scripts/* scripts/

cat ~/.config/fish/config.fish > config.fish
cat ~/.config/i3/config > i3config
cat ~/.config/picom > picom.conf
cat ~/.config/nvim/init.vim > vimrc

