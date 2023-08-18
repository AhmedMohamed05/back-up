#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls -l --color=auto'
alias grep='grep --color=auto'

#PS1='\W  '
PS1='\W => '

#Pacman
alias i='doas pacman -S'
alias r='doas pacman -R'
alias s='doas pacman -Ss'


#Custom Aliases
alias ls='lsd -l'
alias u='~/shell/./update.sh'
alias cat='bat'
alias man='tldr'
alias cd='z'
alias dust='dust -r'
alias n='nvim'
alias md='mkdir'
alias ll="'ls'"

#Zoxide
eval "$(zoxide init bash)"

#Git Aliases
alias gc='git clone'
alias ga='git add'
alias gaa='git add .'
alias gcm='git commit -m'
alias gp='git push origin main'

PATH=~/.console-ninja/.bin:$PATH

# Shell Script
alias build='~/shell/./build.sh'
alias compile='~/shell/./compile.sh'
alias changevolume='~/shell/./volume.sh'
alias ncmake='~/shell/./init_cmake.sh'
