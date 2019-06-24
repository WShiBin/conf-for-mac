# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Change resource
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles' >> ~/.zshrc
source ~/.zshrc

# Install CMD
brew install maven tree aria2 scala wget go cheat htop neofetch netcat fzf netdata ranger tmux zsh-autosuggestions zsh-completions  maven nginx kafka mycli redis mysql cmatrix jeantil/autokbisw/autokbisw

# Install GUI software
brew cask install qq wechat wpsoffice iterm2 fliqlo alfred visual-studio-code typora thunder switchhosts docker teamviewer wireshark calibre iina anki shadowsocksx-ng paw postman omnidisksweeper betterzip