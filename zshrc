# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%~%f%b %# '

alias ll='ls -lF'
alias la='ls -lFA'
alias l='ls -CF'
alias e='exit'
alias m='make'
alias c='clear'

alias repl='clojure -Sdeps "{:deps {nrepl/nrepl {:mvn/version \"RELEASE\"} cider/cider-nrepl {:mvn/version \"RELEASE\"}}}" -M -m nrepl.cmdline --middleware "[\"cider.nrepl/cider-middleware\"]"'

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
#export ZSH_THEME="Solarized"

# Pwerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#source /Users/belarte/Library/Python/3.8/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

PATH="/Users/belarte/Library/Python/3.8/bin:$PATH"
PATH="/usr/local/bin::$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
