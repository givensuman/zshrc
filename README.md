My zsh configuration files, built off of the Oh-My-Zsh framework.

#### Install Oh-My-Zsh

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Clone the repository

```shell
git clone https://github.com/givensuman/zshrc
```

#### And pull out what you need

```shell
cp zshrc/.zshrc ~
```

#### Refresh your shell

```
# You can use the `refresh` command
# to source in the future
source ~/.zshrc
```

![zshrc](https://github.com/givensuman/zshrc/assets/16063606/696e3741-b017-4d44-a456-d2639ae3e632)

#### Dependencies

There are a few zsh plugins we need:

[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

[appa-zsh-theme](https://github.com/givensuman/appa-zsh-theme)
```shell
git clone https://github.com/givensuman/appa-zsh-theme
cp appa-zsh-theme/appa.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes
```

[zsh-eza](https://github.com/z-shell/zsh-eza)
```shell
git clone https://github.com/z-shell/zsh-eza ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-eza
```

<br>

And, like, a bunch of libraries:

[eza](https://github.com/eza-community/eza)
```shell
cargo install --locked eza
```

[bat](https://github.com/sharkdp/bat)
```shell
cargo install --locked bat
```

[bat-int-tokyonight](https://github.com/0xTadash1/bat-into-tokyonight)
```shell
git clone https://github.com/0xTadash1/bat-into-tokyonighthttps://go.dev
cd bat-into-tokyonight
./bat-into-tokyonight
```

[bun](https://bun.sh/)
```shell
curl -fsSL https://bun.sh/install | bash
```

[fnm](https://github.com/Schniz/fnm)
```shell
curl -fsSL https://fnm.vercel.app/install | bash
```

[neovim](https://github.com/neovim/neovim)
```shell
# There are other, probably better ways to do this
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -xvf nvim-linux64.tar.gz
sudo mv nvim-linux64 /opt
```

[golang](https://go.dev)
```shell
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz
```
