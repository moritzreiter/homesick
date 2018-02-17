set -x EDITOR vim
set -x UNCRUSTIFY_CONFIG ~/.config/uncrustify

# Python
set -x PYTHONSTARTUP ~/.pythonrc
set -x PIP_REQUIRE_VIRTUALENV true

# Time format for oh-my-fish theme `bobthefish`
set -g theme_date_format "+%a %b %d %H:%M:%S"

# Pull a JDK 9 image for this to work: `docker pull openjdk:9-jdk`
alias jshell-docker='docker run --rm -it openjdk:9-jdk'

# Install with `docker pull wappalyzer/cli`
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
