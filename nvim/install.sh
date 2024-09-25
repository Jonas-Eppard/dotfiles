#! /bin/bash

set -e

# Install nvim

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# Add to path

echo "export PATH=\"$PATH:/opt/nvim-linux64/bin\"" >> ~/.bashrc

# Add plugins
#
mkdir -p ~/.config
ln -s "$(pwd)/nvim/" ~/.config/nvim


