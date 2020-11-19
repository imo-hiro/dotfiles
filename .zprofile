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
export CFLAGS="-I$(brew --prefix readline)/include -I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include"
export LDFLAGS="-L$(brew --prefix readline)/lib -L$(brew --prefix openssl)/lib"
export PYTHON_CONFIGURE_OPTS="--enable-unicode=ucs2"

# astah setting
export ASDK_HOME="$HOME/dev/astah-plugin-SDK"
export PATH="$ASDK_HOME/bin:$PATH"

# jenv
export JENV_ROOT=/usr/local/var/jenv
if [ -d "${JENV_ROOT}" ]; then
  export PATH="$JENV_ROOT/bin:$PATH"
  eval "$(jenv init -)"
fi
export JAVA_HOME="$(jenv prefix)"

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

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug

# docker completion
fpath=(~/.zsh/completion $fpath)

# readline
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

zmodload zsh/zprof && zprof

