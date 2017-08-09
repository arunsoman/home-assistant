
sudo su -s /bin/bash hosst
virtualenv -p python3 /srv/homeassistant
source /srv/homeassistant/bin/activate
pip3 install --upgrade homeassistant
sudo service hass-daemon restart
#sudo -u hosst -H /srv/homeassistant/bin/hass
