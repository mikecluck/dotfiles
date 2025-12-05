export EDITOR=nvim

alias bat='batcat'
alias fd="fdfind"
alias todo='todotxt-tui'
alias vim=nvim

# Open [yazi](https://yazi-rs.github.io/) and allow changing the current directory
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}