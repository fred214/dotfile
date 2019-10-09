# dotfile

## Install vim-plugin
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd /root/.vim/plugged/python-mode
git submodule update --init --recursive
git submodule status
```

## Enable xterm 256 color
```
# .zshrc or .bashrc
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi
```
