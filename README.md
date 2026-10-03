
[kitty-keybinds]: https://gist.github.com/AskinNet/0d0d4f7f0ee221f8362af9d9876d021a#file-kitty-md

[rsync-wiki]: https://wiki.archlinux.org/title/Rsync

> # **dot-kitty** is :
>
> > ## a ***Kitty config***
> > 
> > > ### with the **[default keybinds]**[kitty-keybinds]
---
## you can do it manually or using the setup-kitty.sh
---
 ## Requirements for the *setup*  
 1. ###  _bash_                 
 2. ###  _tar_                  
 3. ###  _gzip_                 
 4. ###  _[rsync][rsync-wiki]_
 ---
| without ***current config backup*** |
|-------------------------------------|
```bash
git clone https://github.com/anon-18585/dot-kitty.git ~/dot-kitty
cd ~/dot-kitty/
rm -rf ~/.config/kitty/kitty.conf
mv ~/dot-kitty/kitty/ ~/.config/kitty/
cd
rm -rf ~/dot-kitty
echo
echo "config merged."
```
---

| with ***current config backup*** |
|----------------------------------|
```bash
mkdir -p ~/.config/kitty/backup/
cd ~/.config/kitty/backup/
tar -czf kitty-backup-$(date +%F).tar.gz --exclude='~/.config/kitty/backup' ~/.config/kitty
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
```
