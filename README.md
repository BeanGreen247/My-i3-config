# My i3 config

![How it looks](screen.png)

Add repos and install packages
```
sudo apt install -y software-properties-common 
```
Remove unneeded .list files to prevent errors while updating
```
sudo rm -rf /etc/apt/sources.list.d/*
```
Before you continue make sure to install [albert install guide](https://albertlauncher.github.io/installing/)

Continue
```
sudo apt update
sudo apt install -y i3 i3blocks i3status imagemagick make nitrogen imagemagick mpv feh bc libmuparser2v5
```
Next run these commands
```
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev  libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake libxcb-shape0-dev hibernate libxcb-xrm-dev git pkg-config libpam-dev libcairo-dev libfontconfig-dev libxcb-composite0 libxcb-composite0-dev libx11-xcb-dev
git clone https://github.com/nonpop/xkblayout-state.git
sudo cp -r xkblayout-state /usr/local/bin/
git clone https://www.github.com/Airblader/i3 i3-gaps                                                           
cd i3-gaps                                                                                                      
git checkout gaps && git pull                                                                                   
autoreconf --force --install                                                                                    
rm -rf build                                                                                                    
mkdir build                                                                                                     
cd build                                                                                                        
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers                                               
make -j4
git clone --recursive https://github.com/Airblader/xcb-util-xrm.git                                             
cd xcb-util-xrm/   
./autogen.sh
rm -rf build                                                                                                    
mkdir build                                                                                                     
cd build                                                                                                        
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers                                               
make -j4                                                                                                      
sudo make install
cd ..
cd ..
cd build                                                                                                        
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers                                               
make -j4
sudo make install              
```
Next download the config files
```
sudo wget -O  ~/.config/i3/config https://raw.githubusercontent.com/BeanGreen247/My-i3-config/master/i3-config/i3/config
sudo wget -O ~/.config/i3/i3status.conf https://raw.githubusercontent.com/BeanGreen247/My-i3-config/master/i3-config/i3/i3status.conf
```
Lastly create the i3-volume folder to add volume files
```
mkdir i3-volume
wget -O ~/i3-volume/volume-notifications.png https://raw.githubusercontent.com/BeanGreen247/My-i3-config/master/i3-volume/volume-notifications.png
wget -O ~/i3-volume/volume https://raw.githubusercontent.com/BeanGreen247/My-i3-config/master/i3-volume/volume
```
## Enable keyboard switch

Open the /etc/default/keyboard file 
```
sudo nano /etc/default/keyboard
```
and change it from this
```
# KEYBOARD CONFIGURATION FILE

# Consult the keyboard(5) manual page.

XKBMODEL="pc105"
XKBLAYOUT="us"
XKBVARIANT=""
XKBOPTIONS=""

BACKSPACE="guess"
```
to this

NOTE: replace **cz** with your keyboard layout
```
# KEYBOARD CONFIGURATION FILE

# Consult the keyboard(5) manual page.

XKBMODEL="pc105"
XKBLAYOUT="us,cz"
XKBVARIANT=""
XKBOPTIONS="grp:alt_shift_toggle"

BACKSPACE="guess"
```
Make sure to reboot.

You can find the wallpaper on https://beangreen247.github.io/

That is it. Enjoy
