
# lang setting
export LANG='ja_JP.UTF-8'

export PATH="$HOME/.cargo/bin:$PATH"

# rbenv settting
eval "$( rbenv init - zsh )"

# pyenv setting
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$( pyenv init - zsh )"
alias pyenv='CFLAGS="-I$(brew --prefix openssl)/include" LDFLAGS="-L$(brew --prefix openssl)/lib" pyenv'

# astah setting
export ASDK_HOME="/Users/tokinotoki/dev/astah-plugin-SDK-1.4"
export PATH="$ASDK_HOME/bin:$PATH"

# jenv
if which jenv > /dev/null; then
  # JENV_ROOTがemptyの場合、'${HOME}/.jenv'がrootと設定される
  export JENV_ROOT=/usr/local/var/jenv
  eval "$( jenv init - zsh )"
fi

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="/usr/local/share/npm/bin:$PATH"

# tex tools
if [ -d $HOME/tools/tex ]
then
    PATH=$PATH:$HOME/tools/tex; export PATH
fi

# maven
MAVEN_OPTS=-Dmaven.wagon.http.ssl.insecure=true
