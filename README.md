# .dotfiles

Install [stow](https://www.gnu.org/software/stow/) to manage symlinks

```bash
brew install stow
```

Symlink all files under `~/.dotfiles/macos/` to the home directory

```bash
cd ~/.dotfiles
stow macos
```
