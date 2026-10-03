
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
| with ***current config backup*** | without ***current config backup*** |
|----------------------------------|-------------------------------------|
```bash without
git clone https://github.com/anon-18585/dot-kitty.git ~/dot-kitty
cd ~/dot-kitty/
rm -rf ~/.config/kitty/
mv ~/dot-kitty/kitty/ ~/.config/kitty/
cd
rm -rf ~/dot-kitty
echo
echo "config merged."
```
