# dotfiles
Storing all my unix configurations

## Installation

Install [`asdf`](https://github.com/asdf-vm/asdf)
```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0
```

Install [`neovim`](https://neovim.io)

```
brew install neovim
```

Install [fish shell](https://fishshell.com)
```
brew install fish
```

Link fish config
```
ln -s $PWD/fish/config.fish ~/.config/fish/
ln -s $PWD/fish/completions ~/.config/fish/
ln -s $PWD/fish/functions ~/.config/fish/
```

Link neovim config
```
ln -s $PWD/nvim/init.vim ~/.config/nvim/
```

Install [minpac](https://github.com/k-takata/minpac#linux-macos)
```
mkdir -p ~/.config/nvim/pack/minpac/opt
cd ~/.config/nvim/pack/minpac/opt
git clone https://github.com/k-takata/minpac.git
```

From within `nvim` run
```
:call minpac#update()
```
