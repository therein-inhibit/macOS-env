#! /bin/zsh

[ -f ~/.p10k.zsh ] || {
    echo "setup powerlevel10k"
    ln  p10k.zsh ~/.p10k.zsh 
}

grep  -q "\[ -f ~/.dotfiles/zshrc \]" ~/.zshrc 2> /dev/null || {
    echo "installing zshrc"
    echo "[ -f ~/.dotfiles/zshrc ] && . ~/.dotfiles/zshrc" >> ~/.zshrc
} 

grep  -q "\[ -f ~/.dotfiles/zshenv \]" ~/.zshenv 2> /dev/null || {
    echo "installing zshenv"
    echo "[ -f ~/.dotfiles/zshenv ] && . ~/.dotfiles/zshenv" >> ~/.zshenv
} 

grep  -q "\[ -f ~/.dotfiles/zprofile \]" ~/.zprofile 2> /dev/null || {
    echo "installing zprofile"
    echo "[ -f ~/.dotfiles/zprofile ] && . ~/.dotfiles/zprofile" >> ~/.zprofile
} 

[ -f ~/.vimrc ] || {
    echo "installing vimrc"

    ln ~/.dotfiles/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim ~/.vim
} 

