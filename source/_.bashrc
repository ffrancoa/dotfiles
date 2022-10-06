# .bashrc

# Update PATH to including SAC
export PATH="$HOME/.local/bin/sac/bin:$PATH"
export SACDIR="$HOME/.local/bin/sac"
export SACAUX="$HOME/.local/bin/sac/aux"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

alias nfetch="neofetch --ascii_colors 4 2"
alias bat="bat --theme=gruvbox-dark"
# Starship
eval "$(starship init bash)"

# Enable case-insensitive
bind -s 'set completion-ignore-case on'

