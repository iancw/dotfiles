# dotfiles
Storing all my unix configurations

## Installation

Install [`asdf`](https://github.com/asdf-vm/asdf)
```
brew install coreutils automake autoconf openssl libyaml readline libxslt libtool  unixodbc gpg
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0
```
Install [asdf nodejs](https://github.com/asdf-vm/asdf-nodejs)
```
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 8.1.4
asdf global nodejs 8.1.4
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

Copy basic gitconfig, then add your own user info
```
cp gitconfig ~/.gitconfig
git config --global user.name "User Name"
git config --global user.email "user.email@email.org"
```
