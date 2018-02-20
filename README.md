octaflop's dotfiles

basic usage:

```bash
cd ~
git clone --recursive git@github.com:octaflop/dotfiles.git
apt install stow  ## TODO: Make this a move-in script
cd dotfiles/
stow {bin,git,zsh,bash}
```

