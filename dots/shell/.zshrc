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


path+=('/home/pietro/bin')
export PATH

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.venvs
export VIRTUALENVWRAPPER_VIRTUALENV=/home/pietro/.local/bin/virtualenv
source ~/.local/bin/virtualenvwrapper.sh


autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
