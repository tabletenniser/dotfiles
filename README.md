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
2. mkdir -p ~/.config/fish  
3. curl -L https://get.oh-my.fish | fish  
4. omf install agnoster bobthefish fishbone  
5. cp ~/.local/share/omf/themes/fishbone/fish_greeting.fish ~/.local/share/omf/themes/agnoster/  
6. omf theme agnoster  
7. chsh -s `which fish`  

Steps to set up .bashrc, .bashprofile and .gitconfig:  
1. ln -s ~/dotfiles/.bashrc ~/.bashrc  
2. ln -s ~/dotfiles/.bash_profile ~/.bash_profile  
3. ln -s ~/dotfiles/.gitconfig ~/.gitconfig  
4. ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish  

NOTE:  
1. agnoster requires power line font to work (see ~/.local/share/omf/themes/agnoster/fish_prompt.fish), which can be installed from https://gist.github.com/1595572. Also require terminal setting (In iterm2, profile --> text --> Non ASCII key font) to use the powerline font installed.  
2. Enable ctrl+R in fish (installation of fzf): brew install fzf  
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fz; and ~/.fzf/install
To use it in vim, add the following to .vimrc: set rtp+=/usr/local/opt/fzf  
