#!/bin/bash

####################################################################################
#                      
#                     WARNING !!! She can hurt's you sometime's :(
#                                                                              
#          * This tool made by Cowo yang sedang sakit hati                          
#          * Actually Thanks to ZeroByte.iD - IndoXploit - Res7ock Crew    
#          * Tools created for lazy people >:(          
#
####################################################################################
#                                                                                   
#                            Information about Tools
#
#      Name        :  Headache-Warning
#      Version     :  v 1.0 BETA
#      Coded by    :  ZombieRoot - B1P0L4R - NakoCoders
#      Vendor      :  https://www.indoxploit.or.id - https://zerobyte.id - https://www.tatsumi-crew.net
#      Type        :  Enumeration and Checker
#      Contact     :  https://www.facebook.com/abdiprawiran
#      Github      :  https://www.github.com/bipolarizm
#
#    
####################################################################################
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
clear
echo   "Please Wait"
sleep 1
clear
echo   "Initializing Tools ."
sleep 1
clear
echo   "Initializing Tools . ."
sleep 1
clear
echo   "Initializing Tools . . ."
sleep 1
clear

printf " ${white}┌─  ${blue}╦ ╦┌─┐┌─┐┌┬┐┌─┐┌─┐┬ ┬┌─┐       ${yellow}╦ ╦┌─┐┬─┐┌┐┌┬┌┐┌┌─┐   \n"
printf " ${white}│   ${blue}╠═╣├┤ ├─┤ ││├─┤│  ├─┤├┤   ${white}───  ${yellow}║║║├─┤├┬┘││││││││ ┬   \n"
printf " ${white}│   ${blue}╩ ╩└─┘┴ ┴─┴┘┴ ┴└─┘┴ ┴└─┘       ${yellow}╚╩╝┴ ┴┴└─┘└┘┴┘└┘└─┘ ${white}BETA  \n"
printf " ${white}│                            \n"
printf " ${white}│    >   Simply Tools for Information Gathering.                          \n"
printf " ${white}│    >   Created for Some People Who Get Headache Attack                          \n"
printf " ${white}│    >   presented by ${yellow}b1p0l4r ${white}- ${blue}IndoXploit                          \n"
printf " ${white}└────────────────────────────────────────────────────────>>>>>\n"
echo   ""
echo   " Methode List :";
echo   "";
echo   " 1.  Mass Scan HTTP Status";
echo   " 2.  Reverse IP";
echo   " 99. Exit";
echo   "";
echo -e  "┌─$white[root@headache] ";
echo -ne "└───────────────────────:~[$]  $white"
read METHODE;
echo   "";
echo   "";
if [[ $METHODE == "1" ]]; then
clear
printf " ${white}┌─  ${blue}╦ ╦┌─┐┌─┐┌┬┐┌─┐┌─┐┬ ┬┌─┐       ${yellow}╦ ╦┌─┐┬─┐┌┐┌┬┌┐┌┌─┐   \n"
printf " ${white}│   ${blue}╠═╣├┤ ├─┤ ││├─┤│  ├─┤├┤   ${white}───  ${yellow}║║║├─┤├┬┘││││││││ ┬   \n"
printf " ${white}│   ${blue}╩ ╩└─┘┴ ┴─┴┘┴ ┴└─┘┴ ┴└─┘       ${yellow}╚╩╝┴ ┴┴└─┘└┘┴┘└┘└─┘ ${white}BETA  \n"
printf " ${white}│                            \n"
printf " ${white}│         >   HTTP_HEADER STATUS MASS CHECKER                          \n"
printf " ${white}│         >   Input with your list (.txt)                          \n"
printf " ${white}│         >   presented by ${yellow}b1p0l4r ${white}- ${blue}IndoXploit                          \n"
printf " ${white}└────────────────────────────────────────────────────────>>>>>\n"
echo   "";
codestatus(){
response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$1")
if [[ $response =~ "200" ]]; then
printf "$1  >  [$response] ${green} OK\n"
else
printf "$1  >  [$response] ${red} ERROR\n"
fi
}
echo ""
echo "[!] List In This Directory : "
echo -e "$green"
ls
echo -e "$white"
echo -n "[?] Input lists of target : "
read list
echo "";
if [ ! -f $list ]; then
	echo "$list No Such File"
	exit
fi
x=$(gawk '{ print $1 }' $list)
IFS=$'\r\n' GLOBIGNORE='*' command eval  'url=($x)'
for (( i = 0; i < "${#url[@]}"; i++ )); do
	urnna="${url[$i]}"
	codestatus $urnna
done
elif [[ $METHODE == "2" ]]; then
clear
echo    "     ____            ________  ";
echo    "    / __ \___ _   __/  _/ __ \ ";
echo    "   / /_/ / _ \ | / // // /_/ / ";
echo    "  / _, _/  __/ |/ // // ____/  ";
echo -e " /_/ |_|\___/|___/___/_/ $green V 2.0 ";
echo -e "               $white By $green ZeroByte.ID "
echo -e "$white----- Accurate Reverse IP -----";
echo "";

echo     "  [ Without http:// or https:// ]";
echo     "";
echo -ne "[?] Input Site : ";
read TARGET;

REALIP=$(dig +short ${TARGET} | grep -oE "\b((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b" | head -1);

echo "INFO: address $REALIP"
if [[ -z ${REALIP} ]];then
	echo "ERROR: ${TARGET} invalid domain";
	exit;
fi

if [[ -f ./headache-ip/${TARGET}_SITES.LST ]];then
	echo "INFO: ${TARGET} had scanned";
	echo "INFO: file locate (./headache-ip/${TARGET}.done)"
	echo -ne "[?] Sites already scanned, Want to try scan again? [y/n] : ";
	read CHS;
	if [[ ${CHS} == "n" ]];then
		exit;
	fi
	rm -f ./headache-ip/${TARGET}.done
fi

if [[ ! -d "headache-ip" ]];then
	mkdir headache-ip
fi

function cleanUp() {
	if [[ -f REVERSEIP.TEMP ]];then
		rm REVERSEIP.TEMP;
	fi
	if [[ -f REVERSEIP2.TEMP ]];then
		rm REVERSEIP2.TEMP;
	fi
	if [[ -f REVERSEIP3.TEMP ]];then
		rm REVERSEIP3.TEMP;
	fi
}
cleanUp;

function yougetsignal() {
	WEB="${1}"
	CURL=$(curl -s -F "remoteAddress=${WEB}" "https://domains.yougetsignal.com/domains.php");
	IP=$(echo ${CURL} | grep -Po 'remoteIpAddress":"\K.*?(?=")');
	echo "INFO: Grab sites from yougetsignal.com"
	i=0;
	for SITE in $(echo ${CURL} | grep -Po '\["\K.*?(?=",)');
	do
		((i++))
		echo "${SITE}" >> REVERSEIP.TEMP;
	done
	echo "INFO: Total ${i} sites grabbed";
}

function viewdns() {
	WEB="${1}";
	echo "INFO: Grab sites from viewdns.info"
	i=0;
	for SITE in $(curl -s "https://viewdns.info/reverseip/?host=${WEB}&t=1" | grep '</td><td' | sed 's|</td><td|\n|g' | sed 's| <td>| |g' | awk '{print $2}' | sed  '/^$/d' | sed '1d' | sed '1d');
	do
		((i++))
		echo "${SITE}" >> REVERSEIP.TEMP;
	done
	echo "INFO: Total ${i} sites grabbed";
}

function hackertarget() {
	WEB="${1}";
	echo "INFO: Grab sites from hackertarget.com"
	i=0;
	for SITE in $(curl -s -d "theinput=${WEB}&thetest=reverseiplookup&name_of_nonce_field=d210302267&_wp_http_referer=%2Freverse-ip-lookup%2F" "https://hackertarget.com/reverse-ip-lookup/" | sed -n -e '/<pre id="formResponse">/,/<\/pre>/p' | sed 's/<pre id="formResponse">/LINEPALINGATAS\n/g' | grep -v LINEPALINGATAS | grep -v '</pre>');
	do
		((i++))
		echo "${SITE}" >> REVERSEIP.TEMP;
	done
	echo "INFO: Total ${i} sites grabbed";
}

yougetsignal ${TARGET}
viewdns ${TARGET}
hackertarget ${TARGET}

cat REVERSEIP.TEMP | sort -n | uniq >> REVERSEIP2.TEMP
echo "INFO: Total unique sites $(cat REVERSEIP2.TEMP | wc -l)";

function webchk() {
	WEB="${1}";
	ADDR=$(dig +short ${WEB} | grep -oE "\b((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b" | head -1);
	if [[ ! -z ${ADDR} ]]
	then
		echo "INFO: ${WEB} - ${ADDR}";
		echo "${ADDR} ${WEB}" >> REVERSEIP3.TEMP;
	else
		echo "ERROR: ${WEB} invalid domain";
		return 1;
	fi
}

for WEB in $(cat REVERSEIP2.TEMP);
do
	webchk "${WEB}" &
done
wait

cat REVERSEIP3.TEMP | grep "${REALIP}" | awk '{print $2}' >> ./headache-ip/${TARGET}.done;
echo "INFO: Total $(cat ./headache-ip/${TARGET}.done | wc -l) sites same with ${TARGET}'s server";
echo "DONE: Saved ./headache-ip/${TARGET}.done";
cleanUp;
elif [[ $METHODE == "99" ]]; then
echo  " [>] Good Bye Beib ! [<]"
exit
else
echo -e "$white[*] $yellow Keyboard Interrupt  $white[*]"
exit 1
    fi
