# Neovim Configuration

## Neovim instalation

### Get Neovim

- Installing using brew

'''
brew install neovim
'''

> Note: You can follow it's github guide https://github.com/neovim/neovim/wiki/Installing-Neovim

### Install Python support

- This is to allow some pluggins to work

'''
pip3 install --user neovim
'''

> Note: You have to use python3

### Add Vim Plug (Pluggin manager)

- Execute this command to dowload it

'''
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
'''

> Note: You can also follow the instructions that are in his github repo https://github.com/junegunn/vim-plug

## Setting up your vim.init

### Pre-work

- Create a folder inside '~/.config' called 'nvim' and inside them create a file named init.vim

'''
mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim
'''

### Put all your init.vim configuration inside that file

- You can copy and paste the 'init.vim' of this repo inside your file

### Source and install the pluggins

- You need to save the file with ':w'
- Then source the file with ':source %'
- Finaly install the pluggins with ':PlugInstall'

### Add and ENV variable for your VIMRC location
- You will need to add this to your '.zshrc' or '.bashprofile'

'''
export MYVIMRC="~/.config/nvim/init.vim"
'''

