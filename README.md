## Installation

### Necessary packages
```bash
sudo pacman -S ark blueberry bluez btop cliphist copyq curl dunst eza fastfetch feh firefox-developer-edition fzf gimp grim gtk3 gtk4 git gsimplecal gwenview i3 i3locks hyprlock hyprland hypridle kitty mpv neovim nm-connection-editor nwg-look picom maim okular reflector rofi stow swaybg swaync swww tidy thunar tree unzip vlc w3m waybar wget wireshark-qt xautolock yazi zsh zsh-autosuggestions zsh-syntax-highlighting
```
### Python packages
```bash
sudo pacman -S python-seaborn python-scikit-learn python-pillow python-pip python-pipx python-flask python-numpy python-pandas python-requests python-beautifulsoup4
```

### CTF tools
```bash
sudo pacman -S binwalk ghidra gnu-netcat pdfcrack python-pwntools rz-cutter pwndbg
```

### Install yay
```bash
cd ~/Downloads
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### Install pacseek
```bash
yay -S pacseek
```

### Install rest
```bash
yay -S hyprshade pokemon-colorscripts-git pycdc-git wtf
```

### zsh & plugins 
```bash
chsh -s $(which zsh)
```

[oh-my-zsh](https://ohmyz.sh/#install)

[zsh-interactive-cd](https://github.com/mrjohannchang/zsh-interactive-cd)

[zsh-navigation-tools](https://github.com/z-shell/zsh-navigation-tools)

[z](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/z)

