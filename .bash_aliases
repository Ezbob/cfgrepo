
export PATH="$PATH:$HOME/bin"

alias config="git --git-dir=$HOME/.cfgrepo/ --work-tree=$HOME"

open() {
   xdg-open $@
}
