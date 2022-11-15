# ZSH Options 


setopt promptsubst
setopt appendhistory notify #consistent history
unsetopt autocd #don't change directory automatically

bindkey -e
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey '^[[1;5C' forward-word # Ctrl+RightArrow
bindkey '^[[1;5D' backward-word # Ctrl+LeftArrow
bindkey '^[[1;2C' forward-word # Shift+RightArrow
bindkey '^[[1;2D' backward-word # Shift+LeftArrow
bindkey "\033[1~" beginning-of-line
bindkey "\033[4~" end-of-line

zstyle :compinstall filename $HOME/.zshrc
autoload -U colors && colors
autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit

zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

autoload -U promptinit
promptinit

disable -r time
