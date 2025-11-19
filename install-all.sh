#!/bin/bash

# Make some folders that we're going to need
mkdir -p ~/.local/bin ~/.fonts

sudo apt-get install \
  build-essential \
  clang \
  curl \
  git \
  vim

# Kitty (https://sw.kovidgoyal.net/kitty/)
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Starship
curl -sS https://starship.rs/install.sh | sh

# Install PNPM
curl -fsSL https://get.pnpm.io/install.sh | sh -

# Install todo list manager
cargo install todotxt-tui

echo "Next steps:"
echo "1. Install JetBrainsMono Nerd Font (https://www.nerdfonts.com/font-downloads)"
echo "  - Copy all ttf files to ~/.fonts/"
