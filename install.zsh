# !/usr/bin/zsh

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

sudo pacman -S ripgrep nvim-web-devicons make xclip fd
pamac install ascii-image-converter nvim-packer-git
gem install neovim
pip install neovim
