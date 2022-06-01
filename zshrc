# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
## .zhrc for mac
#
#

[ -f ~/.dotfiles/aliasrc ] && . ~/.dotfiles/aliasrc

export TERM="xterm-256color"
#export LSCOLORS=exfxcxdxbxegedabagacad
export CLICOLOR=1
export LSCOLORS=gxfxcxexbxegedabaggCgd

export PATH=$HOME/.cargo/bin:$PATH

export WASMTIME_HOME="$HOME/.wasmtime"
export PATH="$WASMTIME_HOME/bin:$PATH"
export PATH=/Library/Developer/Toolchains/swift-latest/usr/bin:"${PATH}"

export HOSTNAME=mac

export NODE_PATH="$HOME/lib/node_modules"




source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


HISTSIZE=10001
SAVEHIST=10000
HISTFILE=~/.zhistory
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt RM_STAR_SILENT
#setopt AUTO_PUSHD
#setopt PUSHD_IGNORE_DUPS

setopt AUTO_CD
setopt CORRECT
setopt CHASE_DOTS
setopt PUSHD_IGNORE_DUPS
setopt ALWAYS_TO_END
#setopt CORRECT_ALL

bindkey -v
bindkey -M viins '\e?'     backward-delete-char
bindkey -M viins '\eH'     backward-delete-char
bindkey -M viins '\e[3~'   delete-char

bindkey -M viins '\e[1;2C' forward-word
bindkey -M viins '\e[1;2D' backward-word
bindkey -M viins '\e[F'    end-of-line
bindkey -M viins '\e[H'    beginning-of-line

bindkey -M viins '\eOA'    up-line-or-history
bindkey -M viins '\eOB'    down-line-or-history
bindkey -M viins '\e[5~'   beginning-of-buffer-or-history
bindkey -M viins '\e[6~'   end-of-buffer-or-history

alias -g G='|egrep'
alias -g Gi='|egrep -i'
alias -g Gv='|egrep -v'
alias -g Gvi='|egrep -vi'
alias -g Giv='|egrep -iv'
alias -g M='|more'
alias -g L='|less'
alias -g H='|head'
alias -g T='|tail'







# export PATH="$HOME/.cargo/bin:$PATH"

# export WASMTIME_HOME="$HOME/.wasmtime"

# export PATH="$WASMTIME_HOME/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
