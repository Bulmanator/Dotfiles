# Welcome to My Dotfiles

There isn't really much of note here. Just what I use to have my system setup the way I like.

## Software

### Linux
I use stock [Arch Linux](https://www.archlinux.org/) as my preferred distribution. Due to the Nvidia proprietary drivers not supporting Wayland, I have configuration files for both Xorg and Wayland.

#### Common Software
| Purpose              | Name                                                | Configuration                                                         |
| :------------------- | :-------------------------------------------------- | :-------------------------------------------------------------------- |
| Terminal Emulator    | [alacritty](https://github.com/alacritty/alacritty) | [`.config/alacritty/alacritty.yml`](/.config/alacritty/alacritty.yml) |
| Application Launcher | [rofi](https://github.com/davatorium/rofi)          | [`.config/rofi/`](/.config/rofi/)                                     |
| Text Editor          | [neovim](https://github.com/neovim/neovim)          | [`.config/nvim/`](/.config/nvim/)                                     |
| Prompt               | [starship](https://github.com/starship/starship)    | [`.config/starship.toml`](/.config/starship.toml)                     |
| Shell                | [bash](https://www.gnu.org/software/bash/)          | [`.bashrc`](/.bashrc), [`.bash_profile`](/.bash_profile), [`.bash_aliases`](/.bash_aliases) |
| Debugger             | [gdb](https://www.gnu.org/software/gdb/)            | No configuration.                                                     |
| Music Player         | [quodlibet](https://github.com/quodlibet/quodlibet) | No configuration.                                                     |
| File Manager         | [nautilus](https://wiki.gnome.org/Apps/Files)       | No configuration.                                                     |
| Web Browser          | [firefox](https://www.mozilla.org/en-US/firefox/)   | No configuration.                                                     |
| Password Manager     | [keepassxc](https://keepassxc.org/)                 | No configuration.                                                     |

#### Xorg
| Purpose | Name | Configuration |
| :------ | :--- | :------------ |
| Window Management | [bspwm](https://github.com/baskerville/bspwm) | [`.config/bspwm/bspwmrc`](/.config/bspwm/bspwmrc) and [`.config/sxhkd/sxhkdrc`](/.config/sxhkd/sxhkdrc) for keybinds |
| Top Bar           | [polybar](https://github.com/polybar/polybar) | [`.config/polybar/`](/.config/polybar/) |
| xinit             | ---                                           | [`.xinitrc`](/.xinitrc)

#### Wayland
| Purpose           | Name                                                          | Configuration                                                        |
| :---------------- | :------------------------------------------------------------ | :------------------------------------------------------------------- |
| Window Management | [sway](https://github.com/swaywm/sway)                        | [`.config/sway/config`](/.config/sway/config)                        |
| Top Bar           | [swaybar](https://github.com/swaywm/sway/tree/master/swaybar) | [`.config/sway/config`](/.config/sway/config) inside the 'bar' block |

### Windows 10
I use Windows 10 for development reasons a lot of the time. Most software I need is availble on both platforms.

| Purpose              | Name                                                | Configuration                                                         |
| :------------------- | :-------------------------------------------------- | :-------------------------------------------------------------------- |
| Terminal Emulator    | [alacritty](https://github.com/alacritty/alacritty) | [`.config/alacritty/alacritty.yml`](/.config/alacritty/alacritty.yml) |
| Text Editor          | [neovim-qt](https://github.com/equalsraf/neovim-qt) | [`.config/nvim/`](/.config/nvim/)                                     |
| Prompt               | [starship](https://github.com/starship/starship)    | [`.config/starship.toml`](/.config/starship.toml)                     |
| Debugger             | [remedybg](https://remedybg.itch.io/remedybg)       | No configuration.                                                     |
| Music Player         | [foobar2000](https://www.foobar2000.org/)           | No configuration.                                                     |
| Web Browser          | [firefox](https://www.mozilla.org/en-US/firefox/)   | No configuration.                                                     |
| Password Manager     | [keepassxc](https://keepassxc.org/)                 | No configuration.                                                     |

