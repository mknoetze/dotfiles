#!/bin/sh

mkdir -p ~/.config/yazi/plugins

# Exif
sudo apt install -y exiftool

# Check if exifaudio.yazi exists and delete it if it does
if [ -d ~/.config/yazi/plugins/exifaudio.yazi ]; then
  rm -rf ~/.config/yazi/plugins/exifaudio.yazi
fi

# Clone the repository
git clone https://github.com/Sonico98/exifaudio.yazi.git ~/.config/yazi/plugins/exifaudio.yazi

curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install glow

# Check if exifaudio.yazi exists and delete it if it does
if [ -d ~/.config/yazi/plugins/glow.yazi ]; then
  rm -rf ~/.config/yazi/plugins/glow.yazi
fi

# Clone the repository
git clone https://github.com/Reledia/glow.yazi.git ~/.config/yazi/plugins/glow.yazi
