## Installation

### Necessary packages
```bash
sudo pacman -S ark blueberry bluez btop cava cliphist copyq curl eza fastfetch feh firefox-developer-edition fzf gimp grim gtk3 gtk4 git gsimplecal gwenview i3 i3locks hyprlock hyprland hypridle kitty mpv neovim nm-connection-editor nwg-look picom maim okular rofi stow swaybg swaync swww thunar tree unzip vlc waybar wget xautolock yazi zsh zsh-autosuggestions zsh-syntax-highlighting
```

### Python packages
```bash
sudo pacman -S python-seaborn python-scikit-learn python-pillow python-pip python-flask python-numpy python-pandas python-requests python-beautifulsoup4
```

### CTF tools
```bash
sudo pacman -S binwalk ghidra gnu-netcat pdfcrack python-pwntools rz-cutter pwndbg wireshark-qt
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

### Install AUR-packages
```bash
yay -S hyprshade pokemon-colorscripts-git wtf
```

### zsh & plugins
```bash
chsh -s $(which zsh)
```
```
sudo usermod -s /usr/bin/zsh $USER
```

### oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

