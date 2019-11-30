# My i3 config
Add repos and install packages
```
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt update
sudo apt install -y i3 i3blocks i3status i3-gaps
```
Next download the config files
```
sudo wget -O .config/i3/config https://raw.githubusercontent.com/BeanGreen247/My-i3-config/master/i3-config/i3/config
sudo wget -O .config/i3/i3status.conf https://raw.githubusercontent.com/BeanGreen247/My-i3-config/master/i3-config/i3/i3status.conf
```
Lastly create the i3-volume folder to add volume files
```
mkdir i3-volume
wget -O i3-volume/volume-notifications.png https://raw.githubusercontent.com/BeanGreen247/My-i3-config/master/i3-volume/volume-notifications.png
wget -O i3-volume/volume https://raw.githubusercontent.com/BeanGreen247/My-i3-config/master/i3-volume/volume
```
That is it. Enjoy
