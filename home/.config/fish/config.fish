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

alias svim='sudo -E vim'

set workDir (dirname (status -f))
# Load macOS specific stuff
if test (uname) = Darwin
    source $workDir"/config.macos.fish"
end

if begin
    test (hostname) = graviton
    or test (hostname) = golem-pi-zero
end
    source $workDir"/config.ssh-keychain.fish"
end

# https://github.com/mattreduce/oblique-fortunes
if command -s fortune
    fortune oblique
end
