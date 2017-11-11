set -x EDITOR vim
set -x PYTHONSTARTUP ~/.pythonrc

set -g theme_date_format "+%a %Y-%m-%d %H:%M:%S"

# Load OS specific stuff
set workDir (dirname (status -f))
switch (uname)
  case Darwin
    source $workDir"/config.macos.fish"
  case Linux
    source $workDir"/config.linux.fish"
end
