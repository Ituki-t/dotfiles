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
  tmux

echo "Done!"
