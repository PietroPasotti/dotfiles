# Aliases
alias ip='ip --color'
alias ipb='ip --color --brief'
alias zshrc='vim ~/.zshrc'
alias pbcopy='xargs echo -n | xclip -selection c'
alias open='xdg-open'
if command -v exa >/dev/null; then
  alias ls='exa -gl --git --color=automatic'
  alias ll="exa -lh --color=automatic"
  alias la="exa -la --color=automatic"
fi

if command -v bat >/dev/null; then
  alias cat='bat'
fi

alias btop=bashtop
alias reset="tput reset"
alias neofetch="neofetch --ascii_distro Calculate"

# Git
alias gac='git add -A  && git commit -a'
alias gp='git push'
alias gst='git status -sb'

# Docker Aliases
# alias docker='sudo docker'
# alias docker-compose='sudo docker-compose'
alias shellcheck="docker run --rm -v '$PWD:/mnt' -it koalaman/shellcheck"
alias hadolint="docker run --rm -i hadolint/hadolint <"

# Juju Aliases
alias j="juju"
alias js="juju status"
alias jsw='watch -n1 --color "juju status --color"'
alias jsrw='watch -n1 --color "juju status --color --relations"'
alias jdl='juju debug-log'
alias k="microk8s kubectl"

jbash ()
{
  juju ssh $1 bash
}


