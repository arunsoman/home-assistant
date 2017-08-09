sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python-pip python3-dev
sudo pip install --upgrade virtualenv
sudo adduser --system hosst
sudo addgroup hosst
sudo mkdir /srv/homeassistant
sudo chown hosst:hosst /srv/homeassistant
sudo su -s /bin/bash hosst
virtualenv -p python3 /srv/homeassistant
source /srv/homeassistant/bin/activate
pip3 install --upgrade homeassistant
sudo -u hosst -H /srv/homeassistant/bin/hass
