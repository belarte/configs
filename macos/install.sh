#!/bin/zsh

brew bundle install

if [ -e ~/.zshrc ]
then
    echo '' >> ~/.zshrc
    echo 'source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
    echo '' >> ~/.zshrc
    echo 'eval "$(direnv hook bash)"' >> ~/.zshrc
    echo '' >> ~/.zshrc
    echo 'source <(fzf --zsh)' >> ~/.zshrc

    echo "ok"
fi
