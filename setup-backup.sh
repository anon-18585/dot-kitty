mkdir -p ~/.config/kitty/backup/
cd ~/.config/kitty/backup/
  tar -czf kitty-backup-$(date +%F).tar.gz --exclude='../backup' ../
echo
echo " config backup archived to ~/.config/kitty/backup/ . "
echo
git clone https://github.com/anon-18585/dot-kitty.git ~/dot-kitty
echo
cd ~/dot-kitty/
echo
rm -f ~/.config/kitty/kitty.conf
mv ~/dot-kitty/kitty/kitty.conf ~/.config/kitty/
mkdir -p ~/.config/kitty/themes/
mv ~/dot-kitty/kitty/themes/noctalia.conf ~/.config/kitty/themes/
mv ~/dot-kitty/kitty/themes/exemple.conf ~/.config/kitty/themes/

cd
rm -rf ~/dot-kitty
echo
echo "config merged."
