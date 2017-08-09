sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python-pip python3-dev
sudo pip install --upgrade virtualenv
sudo adduser --system hosst
sudo addgroup hosst
sudo mkdir /srv/homeassistant
sudo chown hosst:hosst /srv/homeassistant


sudo cp hass-daemon /etc/init.d/hass-daemon
sudo chmod +x /etc/init.d/hass-daemon
sudo update-rc.d hass-daemon defaults

sudo su -s /bin/bash hosst
virtualenv -p python3 /srv/homeassistant
source /srv/homeassistant/bin/activate
pip3 install --upgrade homeassistant
deactivate
exit

sudo service hass-daemon install
sudo service hass-daemon start

#sudo -u hosst -H /srv/homeassistant/bin/hass
#hass --open-ui
