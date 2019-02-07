# Locale
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# GitHub
alias git='hub'

# Java
set -x JAVA_8_HOME ''
set -x JAVA_11_HOME ''
set java_home_cmd '/usr/libexec/java_home 2>/dev/null --failfast'
if test (eval $java_home_cmd -v1.8)
    set -x JAVA_8_HOME (eval $java_home_cmd -v1.8)
end
if test (eval $java_home_cmd -v11)
    set -x JAVA_11_HOME (eval $java_home_cmd -v11)
end
set -x JAVA_HOME $JAVA_8_HOME

# Python
alias pip='pip3'

# PostgreSQL
set -g fish_user_paths "/usr/local/opt/postgresql@9.6/bin" $fish_user_paths

# macOS
alias launchpad-reset='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'
alias net-listening='lsof -i TCP -s TCP:LISTEN -nP'
alias proc-monitor='top -o cpu -stats pid,command,cpu,mem,time,threads,state'
alias net-monitor-wired='nettop -d -P -J bytes_in,bytes_out -t wired'
alias net-monitor-wifi='nettop -d -P -J bytes_in,bytes_out -t wifi'
