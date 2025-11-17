# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# All of the bash config has been moved to descriptive scripts in ~/.config/bash/
if [ -d "$HOME/.config/bash" ]; then
  for script in "$HOME/.config/bash"/*.sh; do
    [ -f "$script" ] && . "$script" || echo "$script is not executable"
  done
fi

