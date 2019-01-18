set -x EDITOR vim
set -x UNCRUSTIFY_CONFIG ~/.config/uncrustify

# Python
set -x PYTHONSTARTUP ~/.pythonrc
set -x PIP_REQUIRE_VIRTUALENV true
set -x VIRTUAL_ENV_DISABLE_PROMPT true

# Time format for oh-my-fish theme 'bobthefish'
set -g theme_date_format "+%a %b %d %H:%M:%S"

# Show current kubernetes context in 'bobthefish' prompt
set -g theme_display_k8s_context yes

# Docker apps
alias jshell-docker='docker run --rm -it openjdk:10-jdk'
alias wappalyzer='docker run --rm wappalyzer/cli'

alias emacs='emacs --no-window-system'

# Load OS specific stuff
set workDir (dirname (status -f))
switch (uname)
  case Darwin
    source $workDir"/config.macos.fish"
  case Linux
    source $workDir"/config.linux.fish"
end

set -g fish_user_paths "/usr/local/opt/postgresql@9.6/bin" $fish_user_paths
