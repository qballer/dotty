alias cat=bat
alias ls=exa
alias ll="la -la"
alias getenv="launchctl getenv"
alias vim nvim
alias k kubectl
alias p python3
set PATH ~/bin $PATH
set PATH /usr/local/bin $PATH
set PATH /Users/doron.tsur/Library/Python/3.8/bin $PATH
set PATH ~/.cargo/bin/ $PATH
function lsp
  lsof -PiTCP -sTCP:LISTEN
end
pyenv init - | source
set -Ux PYENV_ROOT $HOME/.pyenv
set -gx HOST_IP (ifconfig | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -v 127.0.0.1 | awk '{ print $2 }' | cut -f2 -d: | head -n1)

source ~/.config/fish/private.fish # stuff which should never go on a repo

if set -q ZELLIJ   
else 
  zellij
end
nvm use 14
