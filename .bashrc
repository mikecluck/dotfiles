# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

if [ -d "$HOME/.config/bash" ]; then
  for script in "$HOME/.config/bash"/*.sh; do
    [ -f "$script" ] && . "$script" || echo "$script is not executable"
  done
fi