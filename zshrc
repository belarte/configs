PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%~%f%b %# '

alias ll='ls -lF'
alias la='ls -lFA'
alias l='ls -CF'
alias e='exit'
alias m='make'
alias c='clear'

alias repl='clojure -Sdeps "{:deps {nrepl/nrepl {:mvn/version \"RELEASE\"} cider/cider-nrepl {:mvn/version \"RELEASE\"}}}" -M -m nrepl.cmdline --middleware "[\"cider.nrepl/cider-middleware\"]"'

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export ZSH_THEME="Solarized"

# Pwerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /Users/belarte/Library/Python/3.8/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

PATH="/Users/belarte/Library/Python/3.8/bin:$PATH"
PATH="/usr/local/bin::$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
