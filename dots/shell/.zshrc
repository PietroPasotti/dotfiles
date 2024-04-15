if [[ "${TERM}" == "linux" ]]; then
  export STARSHIP_CONFIG="$HOME/.config/starship-plain.toml"
fi

# Custom zsh config
[[ -f "${HOME}/.zsh_config/config.zsh" ]] && source ~/.zsh_config/config.zsh
# Custom zsh functions
[[ -f "${HOME}/.zsh_config/functions.zsh" ]] && source ~/.zsh_config/functions.zsh
# Custom zsh aliases
[[ -f "${HOME}/.zsh_config/aliases.zsh" ]] && source ~/.zsh_config/aliases.zsh
# Custom zsh env
[[ -f "${HOME}/.zsh_config/env.zsh" ]] && source ~/.zsh_config/env.zsh

source $HOME/.zsh_config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh_config/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"


path+=('$HOME/bin')
export PATH

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.venvs
export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv
source ~/.local/bin/virtualenvwrapper.sh


autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

# custom keybinds
source ~/.zsh_config/reset-all
# ^M  is used to represent the Enter key so that the command is run automatically.
bindkey -s '^K' 'reset-all^M'



eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
#compdef gt
###-begin-gt-completions-###
#
# yargs command completion script
#
# Installation: gt completion >> ~/.zshrc
#    or gt completion >> ~/.zprofile on OSX.
#
_gt_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" gt --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _gt_yargs_completions gt
###-end-gt-completions-###


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
