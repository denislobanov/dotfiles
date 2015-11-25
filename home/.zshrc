# Set up the prompt
setopt promptsubst
autoload -Uz promptinit
promptinit
prompt off
export RPROMPT="%F{green}%~%f"
#export PROMPT="%n@%m %1~£ "
# force vi keybindings
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

#colours!
autoload -U colors && colors

#exports
export EDITOR=vim

#alias


alias shutdown='sudo shutdown'
alias ls='ls -F --color=always --group-directories-first'
alias ll='ls -Flh --color=always --group-directories-first'
alias la='ls --color=always -aF --group-directories-first'
alias pacman='sudo pacman'
alias shutdown='sudo shutdown'
alias pm-hibernate='sudo pm-hibernate'
alias pm-suspend='sudo pm-suspend'
alias mount='sudo mount'
alias umount='sudo umount'
alias diff="colordiff"
alias grep='grep --color=auto'
alias vi='vim'
alias u='cd ..'
alias acrontab='vim ${HOME}/.anacron/anacrontab'
alias tcal='task calendar'

#sane keybindings
bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

#z-jump
#. /etc/profile.d/z.sh
. /usr/bin/z.sh

#stop freezing with git
__git_files () { 
    _wanted files expl 'local files' _files     
}

