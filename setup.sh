git clone https://github.com/anon-18585/dot-kitty.git ~/dot-kitty
cd ~/dot-kitty/
rm -rf ~/.config/kitty/kitty.conf
mv ~/dot-kitty/kitty/ ~/.config/kitty/
cd
rm -rf ~/dot-kitty
echo
echo "config merged."
