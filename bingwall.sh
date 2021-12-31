rm -rf ~/Pictures/Wallpapers
mkdir ~/Pictures/Wallpapers

RAND=$RANDOM
wget -O ~/Pictures/Wallpapers/wallpaper_${RAND}.jpg "http://www.bing.com/$(wget -q -O- https://binged.it/2ZButYc | sed -e 's/<[^>]*>//g' | cut -d / -f2 | cut -d \& -f1)"

# The image filename must be different from the old one, this is why we use $RANDOM:
URI="file://$HOME/Pictures/Wallpapers/wallpaper_${RAND}.jpg"
echo "Setting background from $URI :"

/usr/bin/gsettings set org.gnome.desktop.background picture-options 'centered'
/usr/bin/gsettings set org.gnome.desktop.background picture-uri $URI

