# .dotfiles

Install [stow](https://www.gnu.org/software/stow/) to manage symlinks

```bash
brew install stow
```

Symlink files to the home directory

```bash
cd ~/.dotfiles
stow -d ./macos -t $HOME zsh
stow -d ./macos -t $HOME wezterm
stow -d ./macos -t $HOME nvim
stow -d ./macos -t $HOME tmux
```
