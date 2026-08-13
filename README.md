# dotfiles
Personal dotfiles for my development environment.

## management tools
- Alacritty
- Neovim
- WSL
- scripts/setup-wsl.sh
- Bash
- tmux
### scriptの実行
- scripts/setup-wsl.sh
```bash
cd ~/dotfiles
chmod +x scripts/setup-wsl.sh
./scripts/setup-wsl.sh
```
### tmux
- key bindings<br>
| Key | Action |
|---|---|
| `Ctrl+a` | Prefix |
| `Ctrl+a → h` | Move to left pane |
| `Ctrl+a → j` | Move to lower pane |
| `Ctrl+a → k` | Move to upper pane |
| `Ctrl+a → l` | Move to right pane |

- Reload config
```bash
tmux source-file ~/.tmux.conf
```
