# dotfiles
Steps to install vim plugin:  
1. cd ~  
2. run: git clone git@github.com:tabletenniser/dotfiles.git  
3. Install Vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim  
4. ln -s ~/dotfiles/.vimrc ~/.vimrc  
5. vim ~/.vimrc  
6. :PluginInstall  

Steps to set up fish:  
1. apt-get install fish  
2. chsh -s `which fish`  
3. mkdir -p ~/.config/fish
4. curl -L https://get.oh-my.fish | fish
5. omf install agnoster bobthefish
6. omf theme agnoster
7. cp ~/.local/share/omf/themes/fishbone/fish_greeting.fish ~/.local/share/omf/themes/agnoster/

Steps to set up .bashrc, .bashprofile and .gitconfig:  
1. ln -s ~/dotfiles/.bashrc ~/.bashrc  
2. ln -s ~/dotfiles/.bash_profile ~/.bash_profile  
3. ln -s ~/dotfiles/.gitconfig ~/.gitconfig  
4. ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish  
