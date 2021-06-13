wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hermit.zip
unzip Hermit.zip
mkdir /usr/local/share/fonts
mv Hurmit*.otf /usr/local/share/fonts
