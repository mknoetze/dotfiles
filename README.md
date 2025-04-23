# Installation

```
sudo apt install yadm &&
yadm clone https://github.com/mknoetze/dotfiles.git && yadm bootstrap
```

# Requirements
Install the following using the appropriate installation instructions:
- https://yazi-rs.github.io/docs/installation
- https://regolith-desktop.com/docs/using-regolith/install/
- https://github.com/neovim/neovim/blob/master/INSTALL.md
- https://github.com/alacritty/alacritty/blob/master/INSTALL.md
- https://github.com/jesseduffield/lazygit?tab=readme-ov-file#installation
- https://github.com/jotyGill/ezsh

# Post Install Steps:

Setup zsh
```
chsh -s $(which zsh)
p10k configure
```

Set alacritty as default terminal
```
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $(which alacritty) 50
sudo update-alternatives --config x-terminal-emulator
```

# C++
For the clangd linter to detect header files properly, cmake needs to generate a project `compile_commands.json`

This can be done by adding the following flag to cmake
`-DCMAKE_EXPORT_COMPILE_COMMANDS=YES`
