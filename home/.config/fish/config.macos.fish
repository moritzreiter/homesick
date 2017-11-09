# Java
set -x JAVA_8_HOME (/usr/libexec/java_home -v1.8)
set -x JAVA_9_HOME (/usr/libexec/java_home -v9)
set -x JAVA_HOME $JAVA_8_HOME

alias java8='set -x JAVA_HOME $JAVA_8_HOME'
alias java9='set -x JAVA_HOME $JAVA_9_HOME'

# macOS
alias launchpad-reset='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'
alias net-listening='lsof -i TCP -s TCP:LISTEN -nP'
alias proc-monitor='top -o cpu -stats pid,command,cpu,mem,time,threads,state'
alias net-monitor-wired='nettop -d -P -J bytes_in,bytes_out -t wired'
alias net-monitor-wifi='nettop -d -P -J bytes_in,bytes_out -t wifi'
