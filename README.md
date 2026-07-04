# dotfiles

Dotfiles for zsh + neovim

Focused on getting neovim working for go.

## Requirements

* zsh
* [neovim](https://neovim.io/)
* [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

* (Optional) [pyenv](https://github.com/pyenv/pyenv)

```sh
# linux
curl -fsSL https://pyenv.run | bash
# macos
brew install pyenv
```

* (Optional) [go](https://go.dev)
* (Optional) [gopls](https://go.dev/gopls/)

## neovim

Neovim has plugis through the built in vim.pack mechanism.
A singe `init.lua` is used to configure neovim.

## vim

An old `.vimrc` config file is present - much of the neovim config is based off the vim file.

### Plugins

Vim plugins use vim 8's plugin manager; the plugins I use are:

* [vim-go](https://github.com/junegunn/vim-plug)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [vim-surround](https://github.com/tpope/vim-surround)
* [vim-airline](https://github.com/vim-airline/vim-airline)
* [syntastic](https://github.com/vim-syntastic/syntastic)