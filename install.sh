# Update linux
sudo apt-get autoremove -y
sudo apt-get upgrade -y

# Essentials
sudo apt-get install -y bash zsh zgen sudo wget git \
    make ca-certificates lsb-release \
    vim nano libbrotli-dev cmake \
    ccze jq less catimg \
    tldr curl httpie man neofetch \
    htop ncdu icdiff \
    unzip zip bzip2 p7zip-full \
    locales locales-all \
    bat exa
#
sudo apt-get autoremove -y
sudo apt-get upgrade -y
sudo apt-get update -y
# Fix batcat -> bat
sudo ln -s /usr/bin/batcat /usr/local/bin/bat
# Zsh
sudo apt update && sudo apt install zsh
sudo apt install git curl -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
p10k configure
# Copy default configuretions
cp -fr $HOME/.dotfile-ubuntu/.zshrc .zshrc
# Node/NPM/PNPM install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source $HOME/.nvm/nvm.sh
nvm install --lts
npm install gtop -g
# Change to ZSH
sudo chsh $USER -s /usr/bin/zsh

zsh
