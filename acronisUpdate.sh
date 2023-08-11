#!/bin/sh

ACRONIS_TOKEN="YOUR-TOKEN"
ACRONIS_URL="https://YOUR-REGION.acronis.com"

apt update
apt install linux-headers-$(uname -r) -y
apt install linux-modules-extra-$(uname -r) -y

wget --no-verbose -O CyberProtect_AgentForLinux_x86_64.bin "$ACRONIS_URL/bc/api/ams/links/agents/redirect?language=multi&channel=CURRENT&system=linux&architecture=64&productType=enterprise"
chmod +x CyberProtect_AgentForLinux_x86_64.bin
./CyberProtect_AgentForLinux_x86_64.bin --auto --rain=$ACRONIS_URL --token=$ACRONIS_TOKEN
