# lang setting
export LANG='ja_JP.UTF-8'

export PATH="$HOME/.cargo/bin:$PATH"

# rbenv settting
eval "$( rbenv init - zsh )"

# pyenv setting
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"

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

# open
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

export SDKROOT="$(xcrun --sdk macosx --show-sdk-path)"
