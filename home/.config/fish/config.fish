set -x EDITOR vim
set -x PYTHONSTARTUP ~/.pythonrc

# Load OS specific stuff
set workDir (dirname (status -f))
switch (uname)
  case Darwin
    source $workDir"/config.macos.fish"
  case Linux
    source $workDir"/config.linux.fish"
end
