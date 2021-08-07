# tmux
if [[ ! -n $TMUX ]]; then
  ID="`tmux list-sessions`"
  if [[ -z "$ID" ]]; then
	  tmux new-session
  fi
	create_new_session="Create New Session"
	ID="$ID\n${create_new_session}:"
	ID="`echo $ID | $PERCOL | cut -d: -f1`"
	if [[ "$ID" = "${create_new_session}" ]]; then
	  tmux new-session
	fi
    tmux attach-session -t "$ID"
fi

# use zplug
source $ZPLUG_HOME/init.zsh

# color setting
autoload -Uz colors
colors

# compinit selectable
setopt auto_list
setopt auto_menu
zstyle ':completion:*:default' menu select=1

# ls colors
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} 

# auto cd (change directory)
setopt auto_cd

# store directory history
setopt auto_pushd

# upptercaser or lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# enable typo correct
setopt correct

# autosuggest accept
bindkey '^r' autosuggest-accept

# prompt
PROMPT='%F{green}@%m:%f %F{blue}%~/%f $ '

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# plugins
zplug "zsh-users/zsh-completions", lazy:true
zplug "zsh-users/zsh-autosuggestions", lazy:true
zplug "zsh-users/zsh-syntax-highlighting", defer:2, lazy:true

# Alias
alias la='ls -la'
alias ll='ls -l'
alias l='ls -lCF'
alias ls='ls -GF'
alias vi='vim'
alias vz='vim ~/.zshrc'
alias vv='vim ~/.vimrc'
alias vs='open -a /Applications/Visual\ Studio\ Code.app'
# git
alias gs='git status'
alias gl='git log --graph'
alias glo='git log --graph --oneline'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git pull'
alias gf='git fetch'

zplug load

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/hiroyaimose/.nodebrew/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/hiroyaimose/.nodebrew/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/hiroyaimose/.nodebrew/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/hiroyaimose/.nodebrew/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/hiroyaimose/.nodebrew/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/hiroyaimose/.nodebrew/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh


# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[[ -f /Users/hiroyaimose/.nodebrew/node/v11.12.0/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh ]] && . /Users/hiroyaimose/.nodebrew/node/v11.12.0/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh

# direnv
export EDITOR="vim"
eval "$(direnv hook zsh)"

# terraform
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# thefuck
eval "$(thefuck --alias)"
alias fuck='fuck -y'

if (which zprof > /dev/null 2>&1) ;then
  zprof
fi
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
