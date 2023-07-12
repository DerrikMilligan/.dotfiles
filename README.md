# Setup
Ensure you have [stow](https://www.gnu.org/software/stow/) installed.

Clone the repo and the sub-modules
```bash
git clone --recursive git@github.com:DerrikMilligan/.dotfiles.git ~/.dotfiles
```

Run the setup to stow all the files
```bash
# run the stow commands
~/.dotfiles/setup.sh
```

Or do it manually
```bash
stow neovim
stow bash
# ... ect
```

# Updating
This will update the sub-modules

```bash
# Update all the sub-module repos
git submodule update --init --recursive
```
