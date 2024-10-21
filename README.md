## Installation

### Neccessay packages
```bash
sudo pacman -S git btop zsh curl wget stow grim cliphist dunst firefox-developer-edition kitty neovim nwg-look rofi waybar unzip swww swaybg thunar tree zed blueberry eslint_d eza eslint-language-server nm-connection-editor prettier reflector tidy rubocop vlc mpv ruby ruby-irb fzf ark zathura okular gimp btop w3m gtk2 gtk3 gtk4 qt5ct qt6ct fastfetch 
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
yay -S pokemon-colorscripts-git ani-cli wtf youtube-viewer
```

### zsh & plugins 
```bash
chsh -s $(which zsh)
```

[oh-my-zsh](https://ohmyz.sh/#install)

[zsh-autosuggestions](git clone https://github.com/zsh-users/zsh-autosuggestions.git \
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
)

[zsh-syntax-highlightning](git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
)

