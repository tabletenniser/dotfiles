if [ -f ~/dotfiles/.bashrc ]; then
   source ~/dotfiles/.bashrc
fi

# export ANDROID_HOME=`brew --prefix android`
export PATH=${PATH}:$ANDROID_HOME/bin
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=/usr/local/mysql/bin:$PATH
export PATH=$PATH:/anaconda3/bin
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
# export PATH="/Users/zexuanwang/anaconda/bin:$PATH"

# # added by Anaconda2 2.5.0 installer
# export PATH="/Users/tabletenniser/anaconda/bin:$PATH"
# export PATH="~/.local/bin:$PATH"

# Prefer openssl installed instead of default /usr/bin/openssl
export PATH="/usr/local/opt/openssl@1.1/bin/:$PATH"
# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/zexuan/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/zexuan/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/zexuan/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/zexuan/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
