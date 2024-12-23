# .dotfiles

## Config file tracking using only Git

>[!WARNING]
>Documentation in progress

This is the "bare repository and alias" method, adapted from this [ArchWiki article](https://wiki.archlinux.org/title/Dotfiles)

### Repo Setup

```sh
# setup bare repo
git init --bare ~/.dotfiles

# Replace .f with whatever alias you like. You'll want to also add
# this to your .bashrc (or wherever you define aliases).
alias .f='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# We only care about files explicitly added
.f config status.showUntrackedFiles no
```

### Replicate on other systems

```sh
git clone --bare <GIT_REPO_URL> $HOME/.dotfiles
alias .f='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
.f config --local status.showUntrackedFiles no
.f checkout
```
