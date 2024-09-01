if [ -f ~/dotfiles/.bashrc ]; then
   source ~/dotfiles/.bashrc
fi
if [ -f ~/private_dotfiles/.bashrc ]; then
   source ~/private_dotfiles/.bashrc
fi

export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
# For MAC
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_281.jdk/Contents/Home   # For Java v8
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-15.0.1.jdk/Contents/Home     # For Java v15.0
# export PATH=${PATH}:$ANDROID_HOME/bin
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$HOME/Library/Python/3.9/bin
export PATH=/usr/local/mysql/bin:$PATH
export GOPATH=~/go
export PATH=$JAVA_HOME/bin/:$GOPATH/bin/:$PATH
export CLICOLOR=1
export TERM=xterm-256color
export CLASSPATH=$CLASSPATH:$JAVA_HOME/junit-4.13.1.jar:$CLASSPATH:$JAVA_HOME/hamcrest-all-1.3.jar:.
export PATH

# Prefer openssl installed instead of default /usr/bin/openssl
export PATH="/usr/local/opt/openssl@1.1/bin/:$PATH"
export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="$HOME/development/flutter/bin:$PATH"
alias python3='python3.11'
alias python='python3.11'
alias pip='pip3.11'
alias pip3='pip3.11'

eval "$(nodenv init -)"

# Duolingo CLI - https://github.com/duolingo/cli
. "${HOME}/.duolingo/init.sh"

# Add jenv to your path and initialize it
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export PATH="$PATH:/opt/homebrew/opt/openjdk@11/bin"
export PATH="$PATH:/opt/homebrew/bin/"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/Users/aaronwang/bin:$PATH"
export PATH="/usr/local/sessionmanagerplugin/bin/:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"

# if command -v ngrok &>/dev/null; then
#   eval "$(ngrok completion)"
# fi

# Created by `pipx` on 2024-07-09 23:29:07
export PATH="$PATH:/Users/aaronwang/.local/bin"
