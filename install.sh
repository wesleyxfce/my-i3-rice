#!/bin/bash

set -e

# Diretório do repositório
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "󰆴 Instalando Wesley Rice..."
echo

# Instalar dependências
echo "󰇚 Instalando dependências..."

sudo apt update

sudo apt install -y \
    i3 \
    polybar \
    rofi \
    kitty \
    picom \
    feh \
    curl \
    unzip \
    xdg-user-dirs
echo
echo "󰅖 Instalando JetBrainsMono Nerd Font..."

FONT_DIR="$HOME/.local/share/fonts/JetBrainsMono"

mkdir -p "$FONT_DIR"

curl -L \
    "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip" \
    -o /tmp/JetBrainsMono.zip

unzip -o /tmp/JetBrainsMono.zip -d "$FONT_DIR"

rm /tmp/JetBrainsMono.zip

fc-cache -f

echo
echo "󰆍 Instalando Superfile..."

bash -c "$(curl -fsSL https://raw.githubusercontent.com/yorukot/superfile/main/install.sh)"

echo
echo "󰏖 Copiando configurações..."

mkdir -p "$HOME/.config"

cp -r "$REPO_DIR/configs/i3" "$HOME/.config/"
cp -r "$REPO_DIR/configs/polybar" "$HOME/.config/"
cp -r "$REPO_DIR/configs/rofi" "$HOME/.config/"
cp -r "$REPO_DIR/configs/kitty" "$HOME/.config/"
cp -r "$REPO_DIR/configs/superfile" "$HOME/.config/"
cp -r "$REPO_DIR/configs/dunst" "$HOME/.config/"

echo
echo "󰸉 Copiando Wallpapers..."

WALLPAPER_DIR="$(xdg-user-dir PICTURES)"

mkdir -p "$WALLPAPER_DIR/Wallpapers"

cp -r "$REPO_DIR/wallpapers/." \
    "$WALLPAPER_DIR/Wallpapers/"

echo
echo "󰸞 Wesley Rice instalado com sucesso!"
echo
echo "Reinicie sua sessão do i3 para aplicar as configurações."
