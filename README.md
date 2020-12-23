# dotfile

## Make link 
```
ln -sf $(pwd)/.zshrc ~/.zshrc
ln -sf $(pwd)/.tmux.conf ~/.tmux.conf
ln -sf $(pwd)/init.vim ~/.config/nvim/init.vim
```

## Zsh
### Install Zsh
```
sudo zypper install zsh
echo $SHELL
chsh -s /bin/zsh
```
### Install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Vim
### Install neovim
```
# sudo zyyper in neovim

# https://github.com/AppImage/AppImageKit/wiki/FUSE
sudo zypper in fuse
sudo usermod -a -G trusted `whoami`
re-logon

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage nvim
mv nvim /usr/local/bin
```
### Install vim-plugin
```
# for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# for neovim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vim
:PlugInstall

cd /root/.vim/plugged/python-mode
git submodule update --init --recursive
git submodule status

# for coc
sudo zypper in nodejs
```

### Enable xterm 256 color
```
# check xterm current color mode
tput colors

# .zshrc or .bashrc
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

# enable Vim 256 color support in .vimrc
set t_Co=256
```

## Tmux

### Install tmux
```
# Do not use yum install for tmux, the version do not support source operation

# maybe need to install
# yum install -y libevent-devel ncurses-devel

git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make

# need to source .bash_profile for /usr/local/bin not working
# maybe $PATH changed in the compile
source .bash_profile
```

### Install tmux plugin
```
# in the tmux

# install tpm firstly
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# update tmux config
tmux source ~/.tmux.conf
# or
ctrl-b : source-file ~/.tmux.conf

# install others plugin by tmp
ctrl-b shift-i          # wait for a moment
```

### Shortcut
```
prefix shift-i          # install
prefix shift-u          # update
prefix alt-u            # uninstall plugins not on the plugin list

prefix Ctrl-s           # save tmux session to local file
prefix Ctrl-r           # reload tmux session from local file

```

## Xshell
If use xshell, no need use vim color plugin
>Remember enable xterm 256 color
```
https://github.com/netsarang/Xshell-ColorScheme
http://terminal.sexy
```
