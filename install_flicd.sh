#!/bin/bash
apt-get -y install git
service bluetooth stop
git clone https://github.comi/50ButtonsEach/fliclib-linux-hci.git
cp fliclib-linux-hci/bin/armv6l/flicd /usr/local/bin

mkdir /home/pi/.flic
cp flicd.service /etc/systemd/system/flicd.service
systemctl enable /etc/systemd/system/flicd.service
service flicd start
