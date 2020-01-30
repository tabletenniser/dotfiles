if [ -f ~/dotfiles/.bashrc ]; then
   source ~/dotfiles/.bashrc
fi

# export ANDROID_HOME=`brew --prefix android`
export PATH=${PATH}:$ANDROID_HOME/bin
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=/usr/local/mysql/bin:$PATH
export PATH=$PATH:/anaconda3/bin
alias python3='/anaconda3/bin/python'
# export JAVA_HOME=`/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/`
export JAVA_HOME=''
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export CLICOLOR=1
export TERM=xterm-256color

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# added by Anaconda 2.3.0 installer
export PATH="/Users/zexuanwang/anaconda/bin:$PATH"

# added by Anaconda2 2.5.0 installer
export PATH="/Users/tabletenniser/anaconda/bin:$PATH"
export PATH="~/.local/bin:$PATH"

# Prefer openssl installed instead of default /usr/bin/openssl
export PATH="/usr/local/opt/openssl/bin:$PATH"
