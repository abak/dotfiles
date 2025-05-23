# get and set DOTFILES
set uname (uname)
if [ $uname = "Darwin" ]
  set PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
end

set current_dir (cd (dirname (readlink -m (status -f))); and pwd)
set -x DOTFILES (dirname (dirname (dirname $current_dir)))

set config_path $HOME/.config/fish

source $config_path/colors.fish


# Z
#source $config_path/functions/z-fish/z.fish

# Set my paths and stuff
source $config_path/env.fish

if test -e $config_path/local.fish
  source $config_path/local.fish
end

# needs to have starfish loaded in PATH
starship init fish | source

cd $HOME

