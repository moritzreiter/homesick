# Locale
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# Java
set -x JAVA_11_HOME ''
set -x JAVA_16_HOME ''
set java_home_cmd '/usr/libexec/java_home 2>/dev/null --failfast'
if test (eval $java_home_cmd -v11)
    set -x JAVA_11_HOME (eval $java_home_cmd -v11)
end
if test (eval $java_home_cmd -v16)
    set -x JAVA_16_HOME (eval $java_home_cmd -v16)
end
set -x JAVA_HOME $JAVA_11_HOME

# Node (https://medium.com/@joshuacrass/nvm-on-mac-for-fish-users-e00af124c540)
function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

# Python
alias pip='pip3'

# macOS
alias launchpad-reset='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'
alias net-listening='lsof -i TCP -s TCP:LISTEN -nP'
alias proc-monitor='top -o cpu -stats pid,command,cpu,mem,time,threads,state'
alias net-monitor-wired='nettop -d -P -J bytes_in,bytes_out -t wired'
alias net-monitor-wifi='nettop -d -P -J bytes_in,bytes_out -t wifi'

# Starship Prompt
starship init fish | source

