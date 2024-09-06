# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
alias remove="rm -rf"

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history
zstyle :compinstall filename '/home/coltom/.zshrc'

autoload -Uz compinit
compinit
source ~/.config/zsh/aliases
alias als='sh ~/.config/zsh/alias.sh'
source ~/.local/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias c="z"

eval "$(zoxide init zsh)"
export STARTX=xinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
