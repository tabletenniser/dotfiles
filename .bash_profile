if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export ANDROID_HOME=`brew --prefix android`
export PATH=${PATH}:$ANDROID_HOME/bin
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=/usr/local/mysql/bin:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
