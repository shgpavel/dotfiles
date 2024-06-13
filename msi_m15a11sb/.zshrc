zstyle ':completion*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/main/.zshrc'

autoload -Uz compinit colors && colors
compinit

HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000

PS1="%{$fg_bold[white]%}[%m] %{$fg_bold[white]%}%d%{$fg_bold[green]%} -> %{$reset_color%}"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
