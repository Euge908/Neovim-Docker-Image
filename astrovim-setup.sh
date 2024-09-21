set -ex 
apt update -y
apt install -y wget unzip fontconfig ripgrep build-essential git python3 curl gdu tree python3.11-venv


cd /tmp



## Install Neovim Binary
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz 
mkdir /opt/nvim && tar -xvzf nvim-linux64.tar.gz -C /opt/nvim

## Install Nerd Fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Agave.zip
unzip /tmp/Agave.zip -d /usr/share/fonts/
fc-cache


## Install Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash 

source /root/.bashrc 

nvm install 20

# Install lazygit
wget https://github.com/jesseduffield/lazygit/releases/download/v0.44.1/lazygit_0.44.1_Linux_x86_64.tar.gz
mkdir /opt/lazygit && tar -xvzf lazygit_0.44.1_Linux_x86_64.tar.gz -C /opt/lazygit

# Install Bottom
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.10.2/bottom_0.10.2-1_amd64.deb
dpkg -i bottom_0.10.2-1_amd64.deb

## Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. /root/.cargo/env 

## Install rust Analyzer
rustup component add rust-analyzer

## Install Tree Sitter
cargo install tree-sitter-cli


echo 'export PATH=$PATH:/opt/nvim/nvim-linux64/bin/nvim:/opt/lazygit' >> /root/.bashrc
echo '. /root/.cargo/env' >> /root/.bashrc 



## Delete configs if there are any
rm -rf rm -rf /root/.config/nvim /root/.local/share/nvim
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim


## Clean up /tmp
rm -rf /tmp/*

nvim

