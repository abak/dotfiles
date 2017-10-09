# get and set DOTFILES
set current_dir (cd (dirname (readlink -m (status -f))); and pwd)
set -x DOTFILES (dirname (dirname (dirname $current_dir)))

# PURE prompt 
source pure_config.fish

# Z
source $HOME/.config/fish/functions/z-fish/z.fish

# Set my paths and stuff
source env.fish
