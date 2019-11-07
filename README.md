# dotfiles setup

Custom configuration files managed using a git bare repository. Use the guide below to create your own.

## Quick Start

Initialize a bare repository

```bash
git init --bare $HOME/.dotfiles
```

Create an alias so in the future we can just type `dotfiles status` or `dotfiles push` etc instead of using the `git` keyword

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Don't show me untracked files (you don't care about them and you don't want them to show up)

```bash
dotfiles config --local status.showUntrackedFiles no
```

Add the line from above to your .bashrc, .bash_profile, .zshrc, zprofile file

```bash
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

That's it! Setup complete check below to see usage exmaples

## Usage

### Add/update config files

Add any config file or dotfile you want like this:
```bash
dotfiles add .vimrc
dotfiles commit -m "added vimrc"
dotfiles push
```

*Note: Any command that you can run with git like `git status`, etc you can still run but remember to replace the `git` keyword with `dotfiles` since we created an alias (ie `dotfiles status`).*

### Clone configs to any another machine

```bash
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> ~/.zshrc
source ~/.zshrc
echo ".dotfiles" >> .gitignore

git clone --bare git@github.com:nancynobody/.dotfiles.git .dotfiles/
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no

# The other things I need
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
