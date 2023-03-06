eval (/opt/homebrew/bin/brew shellenv)
alias ls=exa
alias ll="ls --group-directories-first -la"
alias getenv="launchctl getenv"
alias vim nvim
alias k kubectl
alias p python3
alias vim lvim 
set PATH ~/bin $PATH
set PATH ~/.deno/bin $PATH
#set PATH ~/nsccli/bin
set PATH /Users/dorontsur/.local/bin $PATH
set PATH /usr/local/bin $PATH
set PATH /Users/doron.tsur/Library/Python/3.8/bin $PATH
set PATH ~/.cargo/bin/ $PATH
set PATH ~/go/bin/ $PATH
function lsp
  lsof -PiTCP -sTCP:LISTEN
end
pyenv init - | source
set -Ux PYENV_ROOT $HOME/.pyenv
set -gx HOST_IP (ifconfig | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -v 127.0.0.1 | awk '{ print $2 }' | cut -f2 -d: | head -n1)
set -gx GOPRIVATE "github.com/CloudinaryLtd/*"
source ~/.config/fish/private.fish  #stuff which should never go on a repo
source ~/.config/fish/zellij.fish

set -gx EDITOR /opt/homebrew/bin/nvim

if set -q ZELLIJ
else
 zellij 
end


# define golang
set -xg GOBIN ~/go/bin
#rvm use 3.0.2

function pull-sub 
  bass "find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin \;"
end
# starship init fish | source

set -xg CARGO_NET_GIT_FETCH_WITH_CLI true
set -xg DOT_SOURCE ~/code/dotty
#set -xg export AWS_PROFILE DevFullControl
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

starship init fish | source
alias ghome="ssh home@192.168.0.157"

#eval set -gx PATH '/Users/dorontsur/.jenv/shims' $PATH
#set -gx JENV_SHELL fish
#set -gx JENV_LOADED 1
#set -e JAVA_HOME
#set -e JDK_HOME
#source '/usr/local/Cellar/jenv/0.5.5_2/libexec/libexec/../completions/jenv.fish'
#function jenv
#  set command $argv[1]
#  set -e argv[1]
#
#  switch "$command"
#  case enable-plugin rehash shell shell-options
#    jenv "sh-$command" $argv | source
#  case '*'
#    command jenv "$command" $argv
#  end
#end

set PATH ~/bin/ $PATH
rvm default
fnm use 18
bass source ~/.honeybook

# AWS-cli profiles aliases
alias aws-prod-readonly "AWS_PROFILE=prod-readonly aws"
alias aws-prod-dev "AWS_PROFILE=prod-dev aws"
alias aws-staging-readonly "AWS_PROFILE=staging-readonly aws"
alias aws-staging-dev "AWS_PROFILE=staging-dev aws"

# aws-profiles & aws-sso-login commands
source /Users/dorontsur/.aws/awsprofiles.sh
export AWS_PROFILE="unset"

