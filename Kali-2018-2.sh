#!/bin/bash

cat << EOF
                                                                             
 m    m   "             m                  ""#    mmmmm                      
 "m  m" mmm     m mm  mm#mm  m   m   mmm     #    #    #  mmm   m   m        
  #  #    #     #"  "   #    #   #  "   #    #    #mmmm" #" "#   #m#         
  "mm"    #     #       #    #   #  m"""#    #    #    # #   #   m#m         
   ##   mm#mm   #       "mm  "mm"#  "mm"#    "mm  #mmmm" "#m#"  m" "m        
                                                                             
                                                                             
                                                                             
 mmmmm                  m           ""#    ""#                               
   #    m mm    mmm   mm#mm   mmm     #      #     mmm    m mm               
   #    #"  #  #   "    #    "   #    #      #    #"  #   #"  "              
   #    #   #   """m    #    m"""#    #      #    #""""   #                  
 mm#mm  #   #  "mmm"    "mm  "mm"#    "mm    "mm  "#mm"   #                  
                                                                      



EOF
echo "Virtual Box Installer"
echo "Their are two steps"
echo "Your Computer Will restart several times, Don't Worry"
echo "After step 1 run script again and press 2 for Step Two"
echo " _____________________________________________________"
echo "| 1 | Step 1                                          |"
echo "| 2 | Step 2                                          |"
echo "|___|_________________________________________________|"
echo ""
echo ""
read -p "Enter Your Choice:::" choice
if [[ $choice = "1" ]]; then
	echo "Setup is Installing Please wait"
	cd /
	cd /opt/
	mkdir virtualboxinstaller
	cd virtualboxinstaller
	wget https://http.kali.org/kali/pool/main/l/linux/linux-kbuild-4.16_4.16.12-1kali1_amd64.deb
	wget https://http.kali.org/kali/pool/main/l/linux/linux-headers-4.16.0-kali2-all-amd64_4.16.16-2kali1_amd64.deb
	wget https://http.kali.org/kali/pool/main/l/linux/linux-headers-4.16.0-kali2-common_4.16.16-2kali1_all.deb
    dpkg -i linux-kbuild-4.16_4.16.12-1kali1_amd64.deb;
    dpkg -i linux-headers-4.16.0-kali2-common_4.16.16-2kali1_all.deb;
    dpkg -i linux-headers-4.16.0-kali2-all-amd64_4.16.16-2kali1_amd64.deb
    apt-get install -f
	echo "Your System is restarting" >logs.txt
	cat logs.txt
    reboot
else 
echo "Hit Enter to Exit"
fi
if [[ $choice = "2" ]]; then
	cd /
	cd /opt/
	cd virtualboxinstaller
	apt-cache search linux-headers
	apt-cache search linux-image
	wget https://http.kali.org/kali/pool/main/l/linux/linux-image-4.16.0-kali2-amd64_4.16.16-2kali1_amd64.deb
	dpkg -i linux-image-4.16.0-kali2-amd64_4.16.16-2kali1_amd64.deb
	apt-get install -y virtualbox
	reboot

fi
