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
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin
export PATH=/usr/local/mysql/bin:$PATH
export GOPATH=~/go
export PATH=$JAVA_HOME/bin/:$GOPATH/bin/:$PATH
export CLICOLOR=1
export TERM=xterm-256color
export CLASSPATH=$CLASSPATH:$JAVA_HOME/junit-4.13.1.jar:$CLASSPATH:$JAVA_HOME/hamcrest-all-1.3.jar:.
export PATH

# Prefer openssl installed instead of default /usr/bin/openssl
export PATH="/usr/local/opt/openssl@1.1/bin/:$PATH"
