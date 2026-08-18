#!/usr/bin/env bash

set -e

echo "Updating packages..."
sudo apt update
sudo apt upgrade -y

echo "Installing development tools..."
sudo apt install -y \
  git \
  curl \
  unzip \
  ripgrep \
  fzf \
  zoxide \
  tmux \
  clang \
  libclang-dev

echo "Installing Starship..."

if ! command -v starship >/dev/null 2>&1; then
  curl -sS https://starship.rs/install.sh | sh
fi

echo "Installing nvm..."

export NVM_DIR="$HOME/.nvm"

if [ ! -d "$NVM_DIR" ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.5/install.sh | bash
fi

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

echo "Installing Node.js LTS..."
nvm install --lts

echo "Installing Rust..."

if ! command -v rustup >/dev/null 2>&1; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi

# Load Cargo environment
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

echo "Installing Tree-sitter CLI..."

if ! command -v tree-sitter >/dev/null 2>&1; then
  cargo install --locked tree-sitter-cli
fi

echo "Done!"
