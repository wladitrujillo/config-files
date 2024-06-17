# config-files

## Description

This repository contains configuration files for various tools and applications

## Folder Structure
```shell
├── .bashrc.d
│   ├── bash_aliases
│   └── customs_settings
├── .config
│   └── nvim
│       ├── init.lua
│       └── lua
│           ├── config
│           │   ├── init.lua
│           │   ├── keymaps.lua
│           │   ├── lazy.lua
│           │   └── options.lua
│           └── plugins
│               ├── copilot.lua
│               ├── general.lua
│               ├── nvimtree.lua
│               └── telescope.lua
├── .ideavimrc
├── .tmux.conf
└── .vimrc
├── README.md
```

## Tmux Config

```shell

    ~/.tmux.conf

```

## Vim Config

```shell
    ~/.vimrc
    ~/.ideavimrc
```

## Nvim 

### Script config

```shell
    ~/.config/nvim/init.vim
```

### Nvim Lua Config 

```shell
    ~/.config/nvim/init.lua
    ~/.config/nvim/lua/config
    ~/.config/nvim/lua/plugins
```

## GNU Stow

### Crate symbolic links files
```shell
stow .
```
### Clean up symbolic links
```shell
stow -D .
```

## Requirements

- GNU Stow
https://www.gnu.org/software/stow/
https://www.gnu.org/software/stow/manual/stow.html
- Neovim 
https://neovim.io/
- NerdFonts
https://www.nerdfonts.com/font-downloads
```shell
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/NerdFontsSymbolsOnly.zip \
&& unzip NerdFontsSymbolsOnly.zip -d /usr/local/share/fonts \
&& rm NerdFontsSymbolsOnly.zip \
&& fc-cache -v
```
- EZA
https://eza.rocks/
- Tmux
https://github.com/tmux/tmux/wiki
https://hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/
- fzf
https://github.com/junegunn/fzf
- ripgrep
https://github.com/BurntSushi/ripgrep
https://codapi.org/try/ripgrep/
- Copilot for CLI
https://githubnext.com/projects/copilot-cli
