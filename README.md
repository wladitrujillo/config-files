# config-files

## Description

This repository contains configuration files for various tools and applications

## Folder Structure

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
├── init.vim
├── README.md


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
