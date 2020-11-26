
export PATH="$PATH:$HOME/bin"

config() {
   local default_params="--git-dir=$HOME/.cfgrepo/ --work-tree=$HOME"
   if [ "$#" == "0" ]; then
      git $default_params status --short
   else
      git $default_params $@
   fi
}

open() {
   xdg-open $@
}
