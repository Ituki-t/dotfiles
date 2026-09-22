# dotfiles
Personal dotfiles for my development environment.

## management tools
- Alacritty
- WezTerm
- Neovim
- WSL
- scripts/setup-wsl.sh
- Bash
- tmux
### scriptの実行
#### scripts/setup-wsl.sh
```bash
cd ~/dotfiles
chmod +x scripts/setup-wsl.sh
./scripts/setup-wsl.sh
```
### tmux
#### key bindings
| Key | Action |
|---|---|
| `Ctrl+a` | Prefix |
| `Ctrl+a → h` | Move to left pane |
| `Ctrl+a → j` | Move to lower pane |
| `Ctrl+a → k` | Move to upper pane |
| `Ctrl+a → l` | Move to right pane |

#### Reload config
```bash
tmux source-file ~/.tmux.conf
```

### WezTerm

通常は既定の `Ubuntu-22.04` (WSL) が起動します。

PowerShell を新しいタブで起動する手順:

1. `Ctrl+Shift+P` でコマンドパレットを開きます。
2. `PowerShell` と入力します。
3. `Open PowerShell in new tab` を選択して `Enter` を押します。

PowerShell はローカルドメインで `powershell.exe -NoLogo` として起動します。
