#!/bin/bash
cd /home/pi/fliclib-linux-hci/simpleclient/
make
echo "Select startScanWizard"
./simpleclient 127.0.0.1
