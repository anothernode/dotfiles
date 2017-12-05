set -x LANG en_US
set -x EDITOR vim
set -x PYTHONSTARTUP ~/.pythonrc

# Time format for oh-my-fish theme `bobthefish`
set -g theme_date_format "+%a %b %d %H:%M:%S"

# Load OS specific stuff
set workDir (dirname (status -f))
switch (uname)
  case Darwin
    source $workDir"/config.macos.fish"
  case Linux
    source $workDir"/config.linux.fish"
end
