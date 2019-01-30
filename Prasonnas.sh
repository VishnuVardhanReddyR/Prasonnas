#!/bin/bash
#project of prasonnas 
#title           :prasonnas.sh
#description     :This script will make you to access all Nmap Commands Easily.
#author		 	 :Vi5hnu
#date            :14/09/2018
#version         :1    
#usage		 	 :bash pronoxis.sh
#notes           :Install Nmap,Ncrack,Nping,Ncat and Ndiff to use this script.
#bash_version    :4.4.23(1)-release

#<!--------------------------------------------------------------------Basic Nmap Scans Menu starts here-------------------------------------------------------!>

timestamp()                                         #time stamp function used to get the date. 
 {
  date +"Scan-Date:-%x || Scan-Time:-%r"
  echo " "
 }

trap ctrl_c INT
ctrl_c(){

	rm -rf *.txt
	rm -rf *.log
    exit
}

function Basicscan {
	ipvalid
	clear
	plus1=0
	while [[ 1 ]]; do

		echo " "
		echo " "
		echo -e "\033[32m██████╗  █████╗ ███████╗██╗ ██████╗\033[0m\033[2;37m    ███████╗ ██████╗ █████╗ ███╗   ██╗███████╗\033[0m"
		echo -e "\033[32m██╔══██╗██╔══██╗██╔════╝██║██╔════╝\033[0m\033[2;37m    ██╔════╝██╔════╝██╔══██╗████╗  ██║██╔════╝\033[0m"
		echo -e "\033[32m██████╔╝███████║███████╗██║██║     \033[0m\033[2;37m    ███████╗██║     ███████║██╔██╗ ██║███████╗\033[0m"
		echo -e "\033[32m██╔══██╗██╔══██║╚════██║██║██║     \033[0m\033[2;37m    ╚════██║██║     ██╔══██║██║╚██╗██║╚════██║\033[0m"
		echo -e "\033[32m██████╔╝██║  ██║███████║██║╚██████╗\033[0m\033[2;37m    ███████║╚██████╗██║  ██║██║ ╚████║███████║\033[0m"
		echo -e "\033[32m╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝ ╚═════╝\033[0m\033[2;37m    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝\033[0m"
        echo " "
    	echo " "
    	echo " "
    	echo "=============================================================================================================================================================================="                                                                         

		p=$(echo -e "\033[1;4;37;40mSelect a Basic scan\033[0m")
		PS3="$p : "

		sona1=$(echo -e "\033[31mDefault scan\033[0m")
		sona2=$(echo -e "\033[31mversion Scan\033[0m")
		sona3=$(echo -e "\033[31mLogging Scan\033[0m")
		sona4=$(echo -e "\033[31mRanging scan\033[0m")
		sona5=$(echo -e "\033[31mReason flag scan\033[0m")
		sona6=$(echo -e "\033[31mChange IP-ADDRESS\033[0m")
		quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")

		select sonnas in "$sona1" "$sona2" "$sona3" "$sona4" "$sona5" "$sona6" "$quit"
		do
	
			case $sonnas in
						$sona1)	echo -e "\033[1;32m                           	Default Scan      	\033[0m"
								echo "_____________________________________________________________________________" 
								Defaultscan $ip;;

						$sona2) echo -e "\033[1;32m                        		Version Scan      	\033[0m"
								echo "______________________________________________________________________________"
								Versionscan $ip;;

						$sona3) echo -e "\033[1;32m                        		Logging Scan     	\033[0m"
								echo "______________________________________________________________________________"
								Loggingscan $ip;;
						
						$sona4) echo -e "\033[1;32m 							Ranging Scan         \033[0m"
								echo "______________________________________________________________________________"
								Rangingscan $ip;;

						$sona5) echo -e "\033[1;32m                             Reasonflag Scan    	 \033[0m"
								echo "______________________________________________________________________________"
								Reasonflag $ip;;

						$sona6) echo -e "\033[1;32m                             change IP-ADDRESS     \033[0m"
								echo "______________________________________________________________________________"
								ipchange ;;

						$quit)	echo "______________________________________________________________________________"
								plus1=1
								break ;;

							*) optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
								echo "enter the" $optnum "provided above."
								break ;;
			esac
			echo " "
			read -p " clear?(y/n):[y] " dec
					if [[ $dec == 'n' ]]; then
						echo " "
					else
						clear
					fi
			break
		done
		if [[ $plus1 == 1 ]]; then
			break
		fi
	done
	rm -rf *.txt
	rm -rf *.log
}

#<!--------------------------------------------------------------------Basic Nmap Scans Menu ends here-------------------------------------------------------!>


#<!--------------------------------------------------------------------Advanced Nmap Scans Menu starts here-------------------------------------------------------!>

function Advancedscan {
	ipvalid
	clear
	plus2=0
	while [[ 1 ]]; do

	echo " "
	echo " "
	echo -e "\033[34m █████╗ ██████╗ ██╗   ██╗ █████╗ ███╗   ██╗ ██████╗███████╗██████╗ \033[0m\033[2;37m    ███████╗ ██████╗ █████╗ ███╗   ██╗███████╗\033[0m"
	echo -e "\033[34m██╔══██╗██╔══██╗██║   ██║██╔══██╗████╗  ██║██╔════╝██╔════╝██╔══██╗\033[0m\033[2;37m    ██╔════╝██╔════╝██╔══██╗████╗  ██║██╔════╝\033[0m"
	echo -e "\033[34m███████║██║  ██║██║   ██║███████║██╔██╗ ██║██║     █████╗  ██║  ██║\033[0m\033[2;37m    ███████╗██║     ███████║██╔██╗ ██║███████╗\033[0m"
	echo -e "\033[34m██╔══██║██║  ██║╚██╗ ██╔╝██╔══██║██║╚██╗██║██║     ██╔══╝  ██║  ██║\033[0m\033[2;37m    ╚════██║██║     ██╔══██║██║╚██╗██║╚════██║\033[0m"
	echo -e "\033[34m██║  ██║██████╔╝ ╚████╔╝ ██║  ██║██║ ╚████║╚██████╗███████╗██████╔╝\033[0m\033[2;37m    ███████║╚██████╗██║  ██║██║ ╚████║███████║\033[0m"
	echo -e "\033[34m╚═╝  ╚═╝╚═════╝   ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝╚═════╝ \033[0m\033[2;37m    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝\033[0m"
    echo " "
    echo " "
    echo " "
    echo "=============================================================================================================================================================================="                                                                                                             
    
		p=$(echo -e "\033[1;4;37;40mSelect an Advanced Scan\033[0m")
		PS3="$p : "

		sona1=$(echo -e "\033[31mPing sweep\033[0m")
		sona2=$(echo -e "\033[31mPing Agnostic scan\033[0m")
		sona3=$(echo -e "\033[31mUDP Scans\033[0m (this scan takes lot of time make sure before you proceed.)")
		sona4=$(echo -e "\033[31mTCP Scans\033[0m")
		sona5=$(echo -e "\033[31mOS detections scan\033[0m")
		sona6=$(echo -e "\033[31mPacket Tracing scan\033[0m")
		sona7=$(echo -e "\033[31mverbosity in scans\033[0m")
		sona8=$(echo -e "\033[31mChange IP-ADDRESS\033[0m")
		quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")

		select sonnas in "$sona1" "$sona2" "$sona3" "$sona4" "$sona5" "$sona6" "$sona7" "$sona8" "$quit"
		do
	
			case $sonnas in
						$sona1)	echo -e "\033[1;34m                           	Pingsweep Scan\033[0m"
								echo "_____________________________________________________________________________" 
								Pingsweep $ip;;

						$sona2) echo -e "\033[1;34m 							Ping Agnostic Scan\033[0m"
								echo "______________________________________________________________________________"
								Pingagnosticscan  $ip;;

						$sona3) echo -e "\033[1;34m 							UDP Scan \033[0m"
								echo "______________________________________________________________________________"
								UDPscan $ip;;
						
						$sona4) echo -e "\033[1;34m 							TCP Scan\033[0m"
								echo "______________________________________________________________________________"
								TCPscan $ip ;;

						$sona5) echo -e "\033[1;34m 							OS Detection Scan\033[0m"
								echo "______________________________________________________________________________"
								OSdetection $ip ;;

						$sona6) echo -e "\033[1;34m 							Packet Tracing Scan \033[0m"
								echo "______________________________________________________________________________"
								Packettrace $ip;;

						$sona7) echo -e "\033[1;34m 							Verbosity Scan \033[0m"
								echo "______________________________________________________________________________"
								verbosity $ip;;
						$sona7) echo -e "\033[1;34m 							Change IP-ADDRESS \033[0m"
								echo "______________________________________________________________________________"
								ipchange ;;
						$quit)  echo "______________________________________________________________________________"
								plus2=1
								break  ;;

							*) optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
								echo "enter the" $optnum "provided above."
								break ;;
			esac
			echo " "
			read -p " clear?(y/n):[y] " dec
					if [[ $dec == 'n' ]]; then
						echo " "
					else
						clear
					fi
			break
		done
		if [[ $plus2 == 1 ]]; then
			break
		fi
	done
	rm -rf *.txt
	rm -rf *.log
}

#<!--------------------------------------------------------------------Advanced Nmap Scans Menu ends here-------------------------------------------------------!>



#<!--------------------------------------------------------------------Optimized Nmap Scans Menu starts here-------------------------------------------------------!>

function Optimizedscan {
	ipvalid
	clear
	plus3=0
	while [[ 1 ]]; do

	echo " "
	echo " "
	echo -e "\033[33m ██████╗ ██████╗ ████████╗██╗███╗   ███╗██╗███████╗███████╗██████╗ \033[0m\033[2;37m    ███████╗ ██████╗ █████╗ ███╗   ██╗███████╗\033[0m"
	echo -e "\033[33m██╔═══██╗██╔══██╗╚══██╔══╝██║████╗ ████║██║╚══███╔╝██╔════╝██╔══██╗\033[0m\033[2;37m    ██╔════╝██╔════╝██╔══██╗████╗  ██║██╔════╝\033[0m"
	echo -e "\033[33m██║   ██║██████╔╝   ██║   ██║██╔████╔██║██║  ███╔╝ █████╗  ██║  ██║\033[0m\033[2;37m    ███████╗██║     ███████║██╔██╗ ██║███████╗\033[0m"
	echo -e "\033[33m██║   ██║██╔═══╝    ██║   ██║██║╚██╔╝██║██║ ███╔╝  ██╔══╝  ██║  ██║\033[0m\033[2;37m    ╚════██║██║     ██╔══██║██║╚██╗██║╚════██║\033[0m"
	echo -e "\033[33m╚██████╔╝██║        ██║   ██║██║ ╚═╝ ██║██║███████╗███████╗██████╔╝\033[0m\033[2;37m    ███████║╚██████╗██║  ██║██║ ╚████║███████║\033[0m"
 	echo -e "\033[33m ╚═════╝ ╚═╝        ╚═╝   ╚═╝╚═╝     ╚═╝╚═╝╚══════╝╚══════╝╚═════╝ \033[0m\033[2;37m    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝\033[0m"
    echo " "
    echo " "
    echo " "
    echo "=============================================================================================================================================================================="                                                                                                             

		p=$(echo -e "\033[1;4;37;40mSelect an Optimized Scan\033[0m")
		PS3="$p : "
		sona1=$(echo -e "\033[37mTiming Optimization Scan\033[0m")
		sona2=$(echo -e "\033[37mParallelism Scans\033[0m")
		sona3=$(echo -e "\033[37mStuck Host Scan\033[0m")
		sona4=$(echo -e "\033[37mProbe Rates Scan\033[0m")
		sona5=$(echo -e "\033[37mHost Group size Scan\033[0m")
		sona6=$(echo -e "\033[37mChange IP-ADDRESS\033[0m")
		quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")

		select sonnas in "$sona1" "$sona2" "$sona3" "$sona4" "$sona5" "$sona6" "$quit"
		do
	
			case $sonnas in
						$sona1)	echo -e "\033[1;33m 						Timing Optimization Scan\033[0m"
								echo "_____________________________________________________________________________" 
								Timeoptscan $ip;;

						$sona2) echo -e "\033[1;33m 						Parallelism Scans\033[0m"
								echo "______________________________________________________________________________"
								Parallelscan $ip;;
						
						$sona3) echo -e "\033[1;33m 						Stuck Host Scan \033[0m"
								echo "______________________________________________________________________________"
								Stuckscan $ip;;

						$sona4) echo -e "\033[1;33m 						Probe Rates Scan\033[0m"
								echo "______________________________________________________________________________"
								Proberatesscan $ip ;;

						$sona5) plus5=$(echo -e "\033[1;33m 				Host Group size Scan \033[0m")
								echo "______________________________________________________________________________"
								Hostscansize $ip ;;
						$sona6) echo -e "\033[1;33m  						Change IP-ADDRESS \033[0m"
								echo "______________________________________________________________________________"
								ipchange ;;

						$quit)	echo "______________________________________________________________________________"
								plus3=1	
								break ;;

							*) optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
								echo "enter the" $optnum "provided above."
								break ;;
			esac
			echo " "
			read -p " clear?(y/n):[y] " dec
					if [[ $dec == 'n' ]]; then
						echo " "
					else
						clear
					fi
			break
		done
		if [[ $plus3 == 1 ]]; then
			break
		fi
	done
	rm -rf *.txt
	rm -rf *.log
}

#<!--------------------------------------------------------------------Optimized Nmap Scans Menu ends here-------------------------------------------------------!>


#<!-------------------------------------------------------------------- Nmap Nmap Tools Menu starts here-------------------------------------------------------!>

function Nmaptools {
	ipvalid
	clear
	plus4=0
	while [[ 1 ]]; do

	echo " "
	echo " "
 	echo -e "\033[31m███╗   ██╗███╗   ███╗ █████╗ ██████╗ \033[0m\033[2;37m    ████████╗ ██████╗  ██████╗ ██╗     ███████╗\033[0m"
	echo -e "\033[31m████╗  ██║████╗ ████║██╔══██╗██╔══██╗\033[0m\033[2;37m    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝\033[0m"
	echo -e "\033[31m██╔██╗ ██║██╔████╔██║███████║██████╔╝\033[0m\033[2;37m       ██║   ██║   ██║██║   ██║██║     ███████╗\033[0m"
	echo -e "\033[31m██║╚██╗██║██║╚██╔╝██║██╔══██║██╔═══╝ \033[0m\033[2;37m       ██║   ██║   ██║██║   ██║██║     ╚════██║\033[0m"
	echo -e "\033[31m██║ ╚████║██║ ╚═╝ ██║██║  ██║██║     \033[0m\033[2;37m       ██║   ╚██████╔╝╚██████╔╝███████╗███████║\033[0m"
	echo -e "\033[31m╚═╝  ╚═══╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     \033[0m\033[2;37m       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝\033[0m"
    
    echo " "
    echo " "
    echo " "
    echo "========================================================================================================================"                                                                                

		p=$(echo -e "\033[1;4;37;40mSelect a Nmap tool \033[0m")
		PS3="$p : "

		sona1=$(echo -e "\033[31mNcrack\033[0m")
		sona2=$(echo -e "\033[31mNping\033[0m")
		sona3=$(echo -e "\033[31mNcat\033[0m")
		sona4=$(echo -e "\033[31mNdiff\033[0m")
		sona5=$(echo -e "\033[31mChange IP-ADDRESS\033[0m")

		quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")

		select sonnas in "$sona1" "$sona2" "$sona3" "$sona4" "$sona5" "$quit"
		do
	
			case $sonnas in
						$sona1)	echo -e "\033[1;33m  						Ncrack |||\033[0m"
								echo "_____________________________________________________________________________" 
								Ncrack $ip ;;

						$sona2) echo -e "\033[1;33m  						Nping \033[0m"
								echo "______________________________________________________________________________"
								Nping $ip ;;

						$sona3) echo -e "\033[1;33m 						Ncat \033[0m"
								echo "______________________________________________________________________________"
								Ncat $ip ;;
						
						$sona4) echo -e "\033[1;33m 						Ndiff\033[0m"
								echo "______________________________________________________________________________"
								Ndiff $ip ;;

						$sona5) echo -e "\033[1;33m 						change IP-ADDRESS \033[0m"
								echo "______________________________________________________________________________"
								ipchange ;;

						$quit)  echo "______________________________________________________________________________"
								plus4=1
								break  ;;

							*) optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
								echo "enter the" $optnum "provided above."
								break ;;
			esac
			echo " "
			read -p " clear?(y/n):[y] " dec
					if [[ $dec == 'n' ]]; then
						echo " "
					else
						clear
					fi
			break
		done
		if [[ $plus4 == 1 ]]; then
			break
		fi
	done
	rm -rf *.txt
	rm -rf *.log
}

#<!-------------------------------------------------------------------- Nmap Tools Menu ends here-------------------------------------------------------!>


#<!--------------------------------------------------------------------Direct Nmap command selection menu starts here -------------------------------------------------------!>

function Cmdselection {
ipvalid
clear
plus5=0
if [[ -n "$ip" ]]; then
	while [[ 1 ]]; do
			echo " "
			echo " "
			echo -e "\033[36m ██████╗ ██████╗ ███╗   ███╗███╗   ███╗ █████╗ ███╗   ██╗██████╗ \033[0m\033[2;37m    ███████╗███████╗██╗     ███████╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗\033[0m"
			echo -e "\033[36m██╔════╝██╔═══██╗████╗ ████║████╗ ████║██╔══██╗████╗  ██║██╔══██╗\033[0m\033[2;37m    ██╔════╝██╔════╝██║     ██╔════╝██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║\033[0m"
			echo -e "\033[36m██║     ██║   ██║██╔████╔██║██╔████╔██║███████║██╔██╗ ██║██║  ██║\033[0m\033[2;37m    ███████╗█████╗  ██║     █████╗  ██║        ██║   ██║██║   ██║██╔██╗ ██║\033[0m"
			echo -e "\033[36m██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║  ██║\033[0m\033[2;37m    ╚════██║██╔══╝  ██║     ██╔══╝  ██║        ██║   ██║██║   ██║██║╚██╗██║\033[0m"
			echo -e "\033[36m╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║██║  ██║██║ ╚████║██████╔╝\033[0m\033[2;37m    ███████║███████╗███████╗███████╗╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║\033[0m"
 			echo -e "\033[36m ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ \033[0m\033[2;37m    ╚══════╝╚══════╝╚══════╝╚══════╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝\033[0m"
    		echo " "
    		echo " "
    		echo " "
    		echo "=============================================================================================================================================================================="                                                                                                                                        

			p=$(echo -e "\033[1;4;37;40m Select a Command \033[0m")
			PS3="$p : "

			echo -e "\033[34;43m select a command from below \033[0m"
			sona1=$(echo -e "\033[33m nmap -p 1-65535 -sV -sS -T4 $ip \033[0m")
			sona2=$(echo -e "\033[33m nmap -v -sS -A -T4 $ip \033[0m")
			sona3=$(echo -e "\033[33m nmap -v -sS -A -T5 $ip \033[0m")
			sona4=$(echo -e "\033[33m nmap -v -sV -O -sS -T5 $ip \033[0m")
			sona5=$(echo -e "\033[33m nmap -v -p 1-65535 -sV -O -sS -T4 $ip \033[0m")
			sona6=$(echo -e "\033[33m nmap -v -p 1-65535 -sV -O -sS -T5 $ip \033[0m")
			sona7=$(echo -e "\033[33m nmap -sV -v -p 139,445 $ip/24 \033[0m")
			sona8=$(echo -e "\033[33m nmap -sU --script nbstat.nse -p 137 $ip \033[0m")
			sona9=$(echo -e "\033[33m nmap --script-args=unsafe=1 --script smb-check-vulns.nse -p 445 $ip \033[0m")
			quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")
			select sonnas in "$sona1" "$sona2" "$sona3" "$sona4" "$sona5" "$sona6" "$sona7" "$sona8" "$sona9" "$quit"
			do
	
				case $sonnas in
							$sona1) echo "______________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Directscan1_DATE:"$day"_TIME:"$time".log
									echo -e "\033[33;41m Scan started now,if you want to exit press CTRL+c \033[0m"
									sudo nmap -p 1-65535 -sV -sS -T4 $ip |tee -a Directscan1_DATE:"$day"_TIME:"$time".log
									mv Directscan1_DATE:"$day"_TIME:"$time".log log-files ;;

							$sona2)	echo "______________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Directscan2_DATE:"$day"_TIME:"$time".log
									echo -e "\033[31;41m Scan started now,if you want to exit press CTRL+c \033[0m"
									sudo nmap -v -sS -A -T4 $ip |tee -a Directscan2_DATE:"$day"_TIME:"$time".log
									mv Directscan2_DATE:"$day"_TIME:"$time".log log-files ;;

							$sona3)	echo "______________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Directscan3_DATE:"$day"_TIME:"$time".log
									echo -e "\033[31;41m Scan started now,if you want to exit press CTRL+c \033[0m"
									sudo nmap -v -sS -A -T5 $ip |tee -a Directscan3_DATE:"$day"_TIME:"$time".log
									mv Directscan3_DATE:"$day"_TIME:"$time".log log-files	;;

							$sona4)	echo "______________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Directscan4_DATE:"$day"_TIME:"$time".log
									echo -e "\033[31;41m Scan started now,if you want to exit press CTRL+c \033[0m"
									sudo nmap -v -sS -A -T5 $ip |tee -a Directscan4_DATE:"$day"_TIME:"$time".log
									mv Directscan4_DATE:"$day"_TIME:"$time".log log-files	;;

							$sona5)	echo "______________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Directscan5_DATE:"$day"_TIME:"$time".log
									echo -e "\033[31;41m Scan started now,if you want to exit press CTRL+c \033[0m"
									sudo nmap -v -sS -A -T5 $ip |tee -a Directscan5_DATE:"$day"_TIME:"$time".log
									mv Directscan5_DATE:"$day"_TIME:"$time".log log-files	;;

							$sona6)	echo "______________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Directscan6_DATE:"$day"_TIME:"$time".log
									echo -e "\033[31;41m Scan started now,if you want to exit press CTRL+c \033[0m"
									sudo nmap -v -sS -A -T5 $ip |tee -a Directscan6_DATE:"$day"_TIME:"$time".log
									mv Directscan6_DATE:"$day"_TIME:"$time".log log-files	;;

							$sona7)	echo "______________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Directscan7_DATE:"$day"_TIME:"$time".log
									echo -e "\033[31;41m Scan started now,if you want to exit press CTRL+c \033[0m"
									sudo nmap -v -sS -A -T5 $ip |tee -a Directscan7_DATE:"$day"_TIME:"$time".log
									mv Directscan7_DATE:"$day"_TIME:"$time".log log-files	;;

							$sona8)	echo "______________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Directscan8_DATE:"$day"_TIME:"$time".log
									echo -e "\033[31;41m Scan started now,if you want to exit press CTRL+c \033[0m"
									sudo nmap -v -sS -A -T5 $ip |tee -a Directscan8_DATE:"$day"_TIME:"$time".log
									mv Directscan8_DATE:"$day"_TIME:"$time".log log-files	;;

							$sona9)	echo "______________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Directscan9_DATE:"$day"_TIME:"$time".log
									echo -e "\033[31;41m Scan started now,if you want to exit press CTRL+c \033[0m"
									sudo nmap -v -sS -A -T5 $ip |tee -a Directscan9_DATE:"$day"_TIME:"$time".log
									mv Directscan9_DATE:"$day"_TIME:"$time".log log-files ;;

							$quit)	echo "______________________________________________________________________"
									plus5=1
									break ;;

								*) 	optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
									echo "enter the" $optnum "provided above."
									echo "______________________________________________________________________"
									break ;;
			
				esac
			echo " "
			read -p " clear?(y/n):[y] " dec
					if [[ $dec == 'n' ]]; then
						echo " "
					else
						clear
					fi
				break
			done
			if [[ $plus5 == 1 ]]; then
				break
			fi
	done
	rm -rf *.txt
	rm -rf *.log
fi	
		
}


#<!--------------------------------------------------------------------Direct Nmap command selection menu ends here -------------------------------------------------------!>



#<!------------------------------------Default Scan Function starts here --------------------------------------!>


function Defaultscan {
		day=$(date +"%d-%m-%y")
		time=$(date +"%H-%M-%S")

		#<!--                creates a log file with the date & time of the Scan                --!>
		touch Defaultscan_DATE:"$day"_TIME:"$time".log
		echo " 						"
		nmap $1 |tee -a Defaultscan_DATE:"$day"_TIME:"$time".log
		mv Defaultscan_DATE:"$day"_TIME:"$time".log log-files
		#<!--               To Display the text in the Log file into the Terminal             --!>
		
}

#<!------------------------------------Default Scan Function ends here --------------------------------------!>


function Versionscan {
		day=$(date +"%d-%m-%y")
		time=$(date +"%H-%M-%S")
		touch Versionscan_DATE:"$day"_TIME:"$time".log
		nmap -sV $1 |tee -a Versionscan_DATE:"$day"_TIME:"$time".log
		mv Versionscan_DATE:"$day"_TIME:"$time".log log-files
}


function Loggingscan {
	
		day=$(date +"%d-%m-%y")
		time=$(date +"%H-%M-%S")
		touch Loggingscan_DATE:"$day"_TIME:"$time".log
		nmap $1 -oA logbase |tee -a Loggingscan_DATE:"$day"_TIME:"$time".log
		scan1=$(ls -ltr|grep logbase)
		scan2=$(logbase.gnmap|grep open)
		echo $scan1
		echo " "
		echo $scan2
		mv Loggingscan_DATE:"$day"_TIME:"$time".log log-files
		mv logbase.xml log-files
		mv logbase.nmap log-files
		mv logbase.gnmap log-files
}


function Rangingscan {
	
		#<!-------------------------------------------Ranging Scan Menu Starts here-----------------------------------------!>
		plus6=0
		while [[ 1 ]]; do
			clear
			p=$(echo -e "\033[1;4;37;40mSelect a sonas\033[0m")
			PS3="$p : "

			sona1=$(echo -e "\033[31;47mSingle Port Scan\033[0m")
			sona2=$(echo -e "\033[31;47mScan within a Range\033[0m")
			quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")

			select sonnas in "$sona1" "$sona2" "$quit"
				do
					case $sonnas in
							$sona1)	echo -e "\033[1;37;42m||| Single Port Scan |||\033[0m"
									echo "==================================================================================="
									read -p "enter a port number:" pnum
									echo "scan started please wait"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Loggingscan_DATE:"$day"_TIME:"$time".log
									nmap -p $pnum $1 |tee -a Singleportscan_DATE:"$day"_TIME:"$time".log 
									mv Singleportscan_DATE:"$day"_TIME:"$time".log log-files ;;

			    			$sona2)	echo -e "\033[1;37;42m||| Scan Within a Range |||\033[0m"
									echo "==================================================================================="
									read -p "enter min port number:" pnum1
									read -p "enter max port number:" pnum2
									echo "scanning has started please wait:"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Scanin_range_DATE:"$day"_TIME:"$time".log
									nmap -p$pnum1-$pnum2 $1 >> Scanin_range_DATE:"$day"_TIME:"$time".log
									mv Scanin_range_DATE:"$day"_TIME:"$time".log log-files ;;
			    			$quit) 	echo "====================================================================================="
									plus6=1
									break ;;
								*) 
									optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
									echo "enter the" $optnum "provided above." 
									break ;;
					esac
					break
				done
				if [[ $plus6 == 1 ]]; then
					break
				fi
		done

	#<!-------------------------------------------Ranging Scan Menu Ends here-----------------------------------------!>
}
 


function Reasonflag {
		day=$(date +"%d-%m-%y")
		time=$(date +"%H-%M-%S")
		touch Reasonflag_DATE:"$day"_TIME:"$time".log
		nmap --reason $1 |tee -a Reasonflag_DATE:"$day"_TIME:"$time".log
		mv Reasonflag_DATE:"$day"_TIME:"$time".log log-files
}



function Pingsweep {
		echo "scan started please wait"
		day=$(date +"%d-%m-%y")
		time=$(date +"%H-%M-%S")
		touch Pingsweep_DATE:"$day"_TIME:"$time".log
		nmap -sn $1 |tee -a Pingsweep_DATE:"$day"_TIME:"$time".log
		mv Pingsweep_DATE:"$day"_TIME:"$time".log log-files
}



function Pingagnosticscan {
		day=$(date +"%d-%m-%y")
		time=$(date +"%H-%M-%S")
		touch Pingagnostic_DATE:"$day"_TIME:"$time".log
		nmap -Pn $1 |tee -a Pingagnostic_DATE:"$day"_TIME:"$time".log
		mv Pingagnostic_DATE:"$day"_TIME:"$time".log log-files
}


function UDPscan {
	read -p "enter the port number to scan :" prtnum
	if [[ -z "$ip"  || -z "$prtnum" ]]; then
		if [[ $i -le 2 ]]; then
			echo "the default option is EXIT,if you dont enter ip address it EXIT's"
            i++
		else
			break
		fi
	else
		read -p "enter the port number to scan" prtnum
		echo "Scan has started please wait"
		day=$(date +"%d-%m-%y")
		time=$(date +"%H-%M-%S")
		touch UDPscan_DATE:"$day"_TIME:"$time".log
		nmap -sU $1 -p$prtnum |tee -a UDPscan_DATE:"$day"_TIME:"$time".log
	fi
}



function TCPscan {
	#<!--------------------------------------------TCP Scan Menu starts and Executes here--------------------------------------------!>
	plus7=0
	while [[ 1 ]]; do
		p=$(echo -e "\033[1;4;37;40mSelect an option \033[0m")
		PS3="$p : "

		sona1=$(echo -e "\033[31;47mTCP Connect Scan\033[0m")
		sona2=$(echo -e "\033[31;47mSYN Stealth Scan\033[0m")
		sona3=$(echo -e "\033[31;47mFIN scan\033[0m (do not work against microsoft windows hosts )")
		sona4=$(echo -e "\033[31;47mXmas Tree Scan\033[0m (do not work against microsoft windows hosts )")
		sona5=$(echo -e "\033[31;47mNULL Scan\033[0m (do not work against microsoft windows hosts )")
		quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")

		select sonnas in "$sona1" "$sona2" "$sona3" "$sona4" "$sona5" "$quit"
		do
	
			case $sonnas in
					$sona1)	echo -e "\033[1;34m                   	TCP Connect Scan \033[0m"
									echo "_____________________________________________________________________________" 
										day=$(date +"%d-%m-%y")
										time=$(date +"%H-%M-%S")
										touch TCPconnscan_DATE:"$day"_TIME:"$time".log
										nmap -sT $1 |tee -a TCPconnscan_DATE:"$day"_TIME:"$time".log
										mv TCPconnscan_DATE:"$day"_TIME:"$time".log log-files ;;

					$sona2) echo -e "\033[1;34m 					SYN Stealth Scan \033[0m"
							echo "______________________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch TCP_SYNscan_DATE:"$day"_TIME:"$time".log
									nmap -sS $1 |tee -a TCP_SYNscan_DATE:"$day"_TIME:"$time".log
									mv TCP_SYNscan_DATE:"$day"_TIME:"$time".log log-files ;;

					$sona3) echo -e "\033[1;34m 					FIN Scan \033[0m" 
							echo "______________________________________________________________________________"
								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch TCP_FINscan_DATE:"$day"_TIME:"$time".log
								nmap -sF $1 >> TCP_FINscan_DATE:"$day"_TIME:"$time".log
								mv TCP_FINscan_DATE:"$day"_TIME:"$time".log log-files ;;
						
					$sona4) echo -e "\033[1;34m 					XMAS Tree Scan \033[0m"
							echo "______________________________________________________________________________"
								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch TCP_Xmasscan_DATE:"$day"_TIME:"$time".log
								nmap -sX $1 |tee -a TCP_Xmasscan_DATE:"$day"_TIME:"$time".log
								mv  TCP_Xmasscan_DATE:"$day"_TIME:"$time".log log-files ;;

					$sona5) echo -e "\033[1;34m 					NULL Scan \033[0m"
							echo "______________________________________________________________________________"
								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch TCP_Nullscan_DATE:"$day"_TIME:"$time".log
								nmap -sN $ip >> TCP_Nullscan_DATE:"$day"_TIME:"$time".log
								mv TCP_Nullscan_DATE:"$day"_TIME:"$time".log log-files ;;

					$quit)	echo "______________________________________________________________________________"
							plus7=1
							break  ;;

						*) optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
							echo "enter the" $optnum "provided above."
							break ;;
			esac
			break
		done
		if [[ $plus7 == 1 ]]; then
			break
		fi
	done
#<!-------------------------------------------TCP Scan Menu Ends here-----------------------------------------!>	

}

function OSdetection {

		day=$(date +"%d-%m-%y")
		time=$(date +"%H-%M-%S")
		touch OSdetscan_DATE:"$day"_TIME:"$time".log
		sudo nmap $1 -O |tee -a OSdetscan_DATE:"$day"_TIME:"$time".log
		mv OSdetscan_DATE:"$day"_TIME:"$time".log log-files
}


#<!-------------------------------------------Verbosity Scan Menu Starts and Executes here-----------------------------------------!>


function verbosity {
	plus8=0
	while [[ 1 ]]; do
		p=$(echo -e "\033[1;4;37;40mSelect an option\033[0m")
		PS3="$p : "

		sona1=$(echo -e "\033[31;47mLevel-1 Verbose\033[0m")
		sona2=$(echo -e "\033[31;47mLevel-2 Verbose\033[0m")
		sona3=$(echo -e "\033[31;47mLevel-3 Verbose\033[0m")
		sona4=$(echo -e "\033[31;47mReducing Verbose to below normal\033[0m")
		quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")

		select sonnas in "$sona1" "$sona2" "$sona3" "$sona4" "$quit"
		do
	
			case $sonnas in
					$sona1)	echo -e "\033[1;34m    						Level-1 Verbose Scan \033[0m"
							echo "_____________________________________________________________________________" 
								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch Verbose_lev1scan_DATE:"$day"_TIME:"$time".log
								sudo nmap $1 -v -Pn |tee -a Verbose_lev1scan_DATE:"$day"_TIME:"$time".log
								mv Verbose_lev1scan_DATE:"$day"_TIME:"$time".log log-files ;;

					$sona2) echo -e "\033[1;34m 						Level-2 Verbose Scan \033[0m"
							echo "______________________________________________________________________________"
								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch Verbose_lev2scan_DATE:"$day"_TIME:"$time".log
								sudo nmap $1 -vv -Pn |tee -a Verbose_lev2scan_DATE:"$day"_TIME:"$time".log
								mv Verbose_lev2scan_DATE:"$day"_TIME:"$time".log log-files ;;

					$sona3) echo -e "\033[1;34m 						Level-3 Verbose Scan \033[0m"
							echo "______________________________________________________________________________"
								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch Verbose_lev3scan_DATE:"$day"_TIME:"$time".log
								sudo nmap $1 -vvv -Pn |tee -a Verbose_lev3scan_DATE:"$day"_TIME:"$time".log
								mv Verbose_lev3scan_DATE:"$day"_TIME:"$time".log log-files ;;
						
					$sona4) echo -e "\033[1;34m 						Reducing Verbosity Scan \033[0m"
							echo "______________________________________________________________________________"
								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch Verbose_reducing_DATE:"$day"_TIME:"$time".log
								sudo nmap $1 --reduce-verbosity -Pn |tee -a Verbose_reducing_DATE:"$day"_TIME:"$time".log
								mv Verbose_reducing_DATE:"$day"_TIME:"$time".log log-files ;;

					$quit) 	echo "______________________________________________________________________________"
							plus8=1
							break  ;;

						*) 	optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
							echo "enter the" $optnum "provided above." 
							break ;;
			esac
			break
		done
		if [[ $plus8 == 1 ]]; then
			break
		fi
	done
}


#<!-------------------------------------------Verbosity Scan Menu Ends here-----------------------------------------!>

function Packettrace {
		day=$(date +"%d-%m-%y")
		time=$(date +"%H-%M-%S")
		touch Packettrace_DATE:"$day"_TIME:"$time".log
		sudo nmap $1 --packet-trace -Pn |tee -a Packettrace_DATE:"$day"_TIME:"$time".log
		mv Packettrace_DATE:"$day"_TIME:"$time".log log-files
}


#<!-------------------------------------------Time optimizing Scan Menu Starts and executes here-----------------------------------------!>

function Timeoptscan {
		plus9=0
		while [[ 1 ]]; do
			p=$(echo -e "\033[1;4;37;40mSelect a sonas\033[0m")
			PS3="$p : "

			sona1=$(echo -e "\033[31;47mT0/Paranoid\033[0m" "(slowest)")
			sona2=$(echo -e "\033[31;47mT1/Sneaky\033[0m" "(slower)")
			sona3=$(echo -e "\033[31;47mT2/polite\033[0m" "(slow)")
			sona4=$(echo -e "\033[31;47mT3/Normal\033[0m" "(fast)")
			sona5=$(echo -e "\033[31;47mT4/Insane\033[0m" "(faster)")
			sona6=$(echo -e "\033[31;47mT4/Insane\033[0m" "(fastest)")
			quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")
			select sonnas in "$sona1" "$sona2" "$sona3" "$sona4" "$sona5" "$sona6" "$quit"
			do
				case $sonnas in
							$sona1)	echo -e "\033[1;33m 						T0/Time Optimization Scan \033[0m"
									echo "______________________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch timeopt_T0scan_DATE:"$day"_TIME:"$time".log
									time nmap $1 -p- -T0 |tee -a timeopt_T0scan_DATE:"$day"_TIME:"$time".log
									mv timeopt_T0scan_DATE:"$day"_TIME:"$time".log log-files ;;
			
							$sona2)	echo -e "\033[1;33m 						T1/Time Optimization Scan \033[0m"
									echo "______________________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch timeopt_T1scan_DATE:"$day"_TIME:"$time".log
									time nmap $1 -p- -T1 >> timeopt_T1scan_DATE:"$day"_TIME:"$time".log
									mv timeopt_T1scan_DATE:"$day"_TIME:"$time".log log-files ;; 
			
							$sona3)	echo -e "\033[1;33m 						T2/Time Optimization Scan \033[0m"
									echo "______________________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch timeopt_T2scan_DATE:"$day"_TIME:"$time".log
									time nmap $1 -p- -T2 |tee -a timeopt_T2scan_DATE:"$day"_TIME:"$time".log
									mv timeopt_T2scan_DATE:"$day"_TIME:"$time".log log-files ;;
			
							$sona4)	echo -e "\033[1;33m 				 		T3/Time Optimization Scan \033[0m"
									echo "______________________________________________________________________________"

									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch timeopt_T3scan_DATE:"$day"_TIME:"$time".log
									time nmap $1 -p- -T3 |tee -a timeopt_T3scan_DATE:"$day"_TIME:"$time".log
									mv timeopt_T2scan_DATE:"$day"_TIME:"$time".log log-files ;;
			
							$sona5)	echo -e "\033[1;33m  					T4/Time Optimization Scan \033[0m"
									echo "______________________________________________________________________________"

									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch timeopt_T4scan_DATE:"$day"_TIME:"$time".log
									time nmap $1 -p- -T4 |tee -a timeopt_T4scan_DATE:"$day"_TIME:"$time".log ;;
			
							$sona6)	echo -e "\033[1;33m  					T5/Time Optimization Scan \033[0m"
									echo "______________________________________________________________________________"

									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch timeopt_T5scan_DATE:"$day"_TIME:"$time".log
									time nmap $1 -p- -T5 |tee -a timeopt_T5scan_DATE:"$day"_TIME:"$time".log
									mv timeopt_T5scan_DATE:"$day"_TIME:"$time".log log-files ;;
			  
			  				quit)	echo "______________________________________________________________________________"
									plus9=1
									break ;;
			    
			     				*) 	optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
									echo "enter the" $optnum "provided above."
									break ;;
				esac
				break
			done
			if [[ $plus9 == 1 ]]; then
				break
			fi
		done
}

#<!-------------------------------------------Time Optimizing Scan Menu Endss here-----------------------------------------!>


#<!-------------------------------------------HostGroup Size Scan Menu Starts and executes here-----------------------------------------!>

function Hostscansize {
		plus10=0
		while [[ 1 ]]; do
			p=$(echo -e "\033[1;4;37;40mSelect a Hostscansize\033[0m")
			PS3="$p : "

			sona1=$(echo -e "\033[31;47mMax-hostgroup\033[0m" "(slowest)")
			sona2=$(echo -e "\033[31;47mMin-hostgroup\033[0m" "(slower)")
    		quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")
    		select sonnas in "$sona1" "$sona2" "$quit"
			do
				case $sonnas in
						$sona1) echo -e "\033[1;33m 						Maximum Hostgroup Size Scan \033[0m"
								echo "______________________________________________________________________________"
								read -p "enter a value from 256 to 1024" max
								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch Hostsize_maxscan_DATE:"$day"_TIME:"$time".log
								nmap -Pn $1 --max-hostgroup $max |tee -a Hostsize_maxscan_DATE:"$day"_TIME:"$time".log
								mv Hostsize_maxscan_DATE:"$day"_TIME:"$time".log log-files ;;
			
						$sona2) echo -e "\033[1;33m Minimum Hostgroup Size Scan \033[0m"
								echo "______________________________________________________________________________"
								read -p "enter a value from 0 to 256" min
								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch Hostsize_minscan_DATE:"$day"_TIME:"$time".log
								nmap -Pn $1 --min-hostgroup $min |tee -a Hostsize_minscan_DATE:"$day"_TIME:"$time".log
								mv Hostsize_minscan_DATE:"$day"_TIME:"$time".log log-files ;; 
						
						$quit)	echo "______________________________________________________________________________"
								plus10=1
								break ;;
			    	
			    			 *) optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
								echo "enter the" $optnum "provided above."
								break ;;
				esac
				break
			done
			if [[ plus10 == 1 ]]; then
				break
			fi
		done
}

#<!-------------------------------------------HostGroup Size Scan Menu ends here-----------------------------------------!>

#<!-------------------------------------------Parallelism Scan Menu Starts and executes here-----------------------------------------!>

function Parallelscan {
		plus11=0
		while [ 1 ]; do
			p=$(echo -e "\033[1;4;37;40mSelect a Hostscansize\033[0m")
			PS3="$p : "

			sona1=$(echo -e "\033[31;47mMax-Parallelism\033[0m" )
			sona2=$(echo -e "\033[31;47mMin-Parallelism\033[0m")
    		quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")
    		select sonnas in "$sona1" "$sona2" "$quit"
   	 		do
   	 			case $sonnas in
    						$sona1)	echo -e "\033[1;33m 					Parallelism Maximum Scan \033[0m"
									echo "______________________________________________________________________________"

									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch parallel_maxscan_DATE:"$day"_TIME:"$time".log
									nmap -Pn $1 --max-parallelism 1 |tee -a parallel_maxscan_DATE:"$day"_TIME:"$time".log
									mv parallel_maxscan_DATE:"$day"_TIME:"$time".log log-files ;; 

							$sona2)	echo -e "\033[1;33m 					Parallelism Minimum Scan \033[0m"
									echo "______________________________________________________________________________"

									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch parallel_minscan_DATE:"$day"_TIME:"$time".log
									nmap -Pn $1 --min-parallelism 12 |tee -a parallel_minscan_DATE:"$day"_TIME:"$time".log
									mv parallel_minscan_DATE:"$day"_TIME:"$time".log log-files ;;

							$quit) 	echo "______________________________________________________________________________"
									plus11=1
									break ;;

								*)	optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
									echo "enter the" $optnum "provided above."
										break ;; 
				esac	
				break
    		done
    		if [[ plus11 == 1 ]]; then
    			break
    		fi
		done
}

#<!-------------------------------------------Parallelism Scan Menu Ends here-----------------------------------------!>


function Stuckscan {
		echo "Scan has started please wait"
		day=$(date +"%d-%m-%y")
		time=$(date +"%H-%M-%S")
		touch Stuckscan_DATE:"$day"_TIME:"$time".log
		sudo nmap -Pn -p- $1 --host-timeout 1m |tee -a Stuckscan_DATE:"$day"_TIME:"$time".log
		mv Stuckscan_DATE:"$day"_TIME:"$time".log log-files
}


#<!-------------------------------------------ProbeRates Scan Menu Starts and executes here-----------------------------------------!>

function Proberatesscan {
		plus12=0
		while [[ 1 ]]; do
			p=$(echo -e "\033[1;4;37;40mSelect a sonas\033[0m")
			PS3="$p : "

			sona1=$(echo -e "\033[31;47mScan-delay\033[0m")
			sona2=$(echo -e "\033[31;47mMin-rate\033[0m")
			sona3=$(echo -e "\033[31;47mMax-rate\033[0m")
			quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")
			select sonnas in "$sona1" "$sona2" "$sona3" "$quit"
			do
				case $sonnas in
						$sona1)	echo -e "\033[1;33m Probe Rate Delay-scan Scan \033[0m"
								echo "______________________________________________________________________________"
								
								read -p "enter a port number to scan:" pnum
								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch Probe-rate_delayscan_DATE:"$day"_TIME:"$time".log
								nmap $1 --scan-delay 5s -p$pnum |tee -a Probe-rate_delayscan_DATE:"$day"_TIME:"$time".log
								mv Probe-rate_delayscan_DATE:"$day"_TIME:"$time".log log-files ;;

						$sona2)	echo -e "\033[1;33m Minimum Rate Scan \033[0m"
								echo "______________________________________________________________________________"

								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch Probe-rate_Minscan_DATE:"$day"_TIME:"$time".log
								nmap $ip --min-rate 1 >> Probe-rate_Minscan_DATE:"$day"_TIME:"$time".log
								mv Probe-rate_Minscan_DATE:"$day"_TIME:"$time".log log-files ;;

						$sona3)	echo -e "\033[1;33m Maximum Rate Scan \033[0m"
								echo "______________________________________________________________________________"
								
								day=$(date +"%d-%m-%y")
								time=$(date +"%H-%M-%S")
								touch Probe-rate_Maxscan_DATE:"$day"_TIME:"$time".log
								nmap $1 --max-rate 100 |tee -a Probe-rate_Maxscan_DATE:"$day"_TIME:"$time".log
								mv Probe-rate_Maxscan_DATE:"$day"_TIME:"$time".log ;;

						quit) 	echo "______________________________________________________________________________"
								plus12=1
								break;;

							*)	optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
								echo "enter the" $optnum "provided above." 
								break ;;

				esac
				break
			done
			if [[ plus12 == 1 ]]; then
				break
			fi
		done
}

#<!-------------------------------------------ProbeRates Scan Menu Ends here-----------------------------------------!>


#<!-------------------------------------------Ncrack Menu Starts and executes here-----------------------------------------!>

function Ncrack {
	plus13=0
			while [[ 1 ]]; do
				p=$(echo -e "\033[1;4;37;40mSelect a ncrack\033[0m")
				PS3="$p : "

				sona1=$(echo -e "\033[31;47mNcrack against ssh\033[0m")
				sona2=$(echo -e "\033[31;47mNcrack brute-force against username\033[0m")
				quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")
				select sonnas in "$sona1" "$sona2" "$quit"
				do
					case $sonnas in
							$sona1)	echo -e "\033[1;33m  						Ncrack against ssh \033[0m"
									echo "______________________________________________________________________________"

									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Ncrack_sshscan_DATE:"$day"_TIME:"$time".log
									ncrack -v ssh://$1 |tee -a Ncrack_sshscan_DATE:"$day"_TIME:"$time".log
									mv Ncrack_sshscan_DATE:"$day"_TIME:"$time".log log-files ;;

							$sona2)	echo -e "\033[1;33m 						Ncrack Brute-force against Username \033[0m"
									echo "______________________________________________________________________________"
									day=$(date +"%d-%m-%y")
									time=$(date +"%H-%M-%S")
									touch Ncrack_brutescan_DATE:"$day"_TIME:"$time".log
									ncrack --user root ssh://$1 |tee -a Ncrack_brutescan_DATE:"$day"_TIME:"$time".log
									mv Ncrack_brutescan_DATE:"$day"_TIME:"$time".log log-files ;;

							$quit)	echo "______________________________________________________________________________"
									plus13=1
									break ;;

								*)	optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
									echo "enter the" $optnum "provided above."
									break ;;
					esac
					break
				done
				if [[ $plus13 == 1 ]]; then
					break
				fi
			done					 
}

#<!------------------------------------------- ncrack Menu Endss here-----------------------------------------!>


function Nping {
		read -p "enter a port number:" pnum
		while [[ -z "$pnum"  ]]; do
				$pnum="-"
		done
			echo "Scan has started please wait"
			day=$(date +"%d-%m-%y")
			time=$(date +"%H-%M-%S")
			touch Nping_DATE:"$day"_TIME:"$time".log
			sudo nping -c2 $1 -p$pnum |tee -a Nping_DATE:"$day"_TIME:"$time".log
			mv Nping_DATE:"$day"_TIME:"$time".log log-files
}

function Ncat {
	echo -e "\033[1;37;43m||| Ncat Scan |||\033[0m"
	echo "______________________________________________________________________________"

		read -p "enter a port number:" pnum
		while [[ -z "$pnum"  ]]; do
			$pnum="80"
		done
			echo "Scan has started please wait"
			day=$(date +"%d-%m-%y")
			time=$(date +"%H-%M-%S")
			touch Ncat_DATE:"$day"_TIME:"$time".log
			ncat $ip $pnum >> Ncat_DATE:"$day"_TIME:"$time".log
			mv Ncat_DATE:"$day"_TIME:"$time".log log-files

}


function Ndiff {
	echo -e "\033[1;37;43m||| Ndiff Scan |||\033[0m"
	echo "______________________________________________________________________________"

	read -p "enter the first file name with file format :[EXIT] " file1
	declare -i i=0
	if [[ -z "$file1"  ]]; then
		if [[ $i -eq 0 ]]; then
			echo "the default option is EXIT,if you dont enter ip address it EXIT's"
            i=1
		else
			break
		fi
	else
		read -p "enter the Next file name with file format :[EXIT] " file2
		declare -i i=0
		if [[ -z "$file2"  ]]; then
			if [[ $i -eq 0 ]]; then
				echo "the default option is EXIT,if you dont enter ip address it EXIT's"
            	i=1
			else
				break
			fi
		else
			echo "Scan has started please wait"
			day=$(date +"%d-%m-%y")
			time=$(date +"%H-%M-%S")
			touch Ndiff_DATE:"$day"_TIME:"$time".log
			ndiff $file1 $file2 |tee -a Ndiff_DATE:"$day"_TIME:"$time".log
		fi
	fi

}
function ipvalid {
while [[ 1 ]]; do
    read -p "Enter an ip address or a Domain name:" ipadd                           #get an ip or url.
	if [[ -z $ipadd ]]; then              												 #checking for the null values in ip adress field.
		read -p " Do you want to Exit?(y/n):[n] " dec
			if [[ $dec == 'y' ]]; then
				clear
				exit
			else
				echo " "
			fi
	fi

	if [[ -n $ipadd ]]; then
				if fping -r 1 $ipadd                                                        #to check the ip is alive or not.
				then
					ip=$(ping -c 1 $ipadd |grep 'bytes from' | awk 'BEGIN{RS=":"} NR==1{print $4}')
  					echo " "
  					echo -e "\033[1;31m IP Validated.The target IP-ADDRESS IS:\033[0m\033[1;33m $ip \033[0m"
  					break

				else
  					echo " "
 					echo -e "\033[1;31mEnter Valid ip Address\033[0m"
  					echo " "
  					read -p " Do you want to Exit?(y/n):[y] " dec
					if [[ $dec == 'n' ]]; then
						echo " "
					else
						exit
					fi
				fi
	fi
done
}
function ipchange {
while [[ 1 ]]; do
    read -p "Enter an ip address or a Domain name:" ipadd                           #get an ip or url.
	if [[ -z $ipadd ]]; then              												 #checking for the null values in ip adress field.
		read -p " Do you want to keep the old ip?(y/n):[n] " dec
			if [[ $dec == 'y' ]]; then
				clear
				break
			else
				echo " "
			fi
	fi

	if [[ -n $ipadd ]]; then
				if fping -r 1 $ipadd                                                        #to check the ip is alive or not.
				then
					ip=$(ping -c 1 $ipadd |grep 'bytes from' | awk 'BEGIN{RS=":"} NR==1{print $4}')
  					echo " "
  					echo -e "\033[1;31m IP Validated.The new target IP-ADDRESS IS:\033[0m\033[1;33m $ip \033[0m"
  					break

				else
  					echo " "
 					echo -e "\033[1;31mEnter Valid ip Address\033[0m"
  					echo " "
  					read -p " Do you want to keep the old ip?(y/n):[y] " dec
					if [[ $dec == 'n' ]]; then
						echo " "
					else
						clear
						break
					fi
				fi
	fi
done
}

function UserChecker {

  if [ "$(whoami)" == "root" ]; then
    echo -e "\033[1;33mRoot Detected. Processing checks\033[0m"
    echo " "
    sleep 1
    checker
  else
    echo -e "\033[1;33mYou need Root Privileges to run this script\033[0m"
    echo -e "\033[1;33mPlease run ./Prasonnas.sh to make this script fully functional.\033[0m"
    exit

  fi

}

function checker {
if [ "$(uname -s)" == "Linux" ]; then
	echo -e "\033[1;33m checking Packges \033[0m "   
 	echo " "
    echo -e "\033[1;32m updating Linux  \033[0m"
    apt-get update &>/dev/null && apt-get upgrade &>/dev/null
    #nmap
    echo -e "\033[1;31m checking for Nmap \033[0m"
    which nmap &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1
    else
      echo -e "\033[1;31mInstalling Nmap using apt-get. This may take several seconds.\033[0m"
      sudo apt-get install nmap -y &>/dev/null 
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi
    #fping
    echo -e "\033[1;31m checking for fping \033[0m"
    which fping &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1
    else
      echo -e "\033[1;31mInstalling fping using apt-get. This may take several seconds.\033[0m"
      sudo apt-get install fping -y &>/dev/null 
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi

    #ncrack
    echo -e "\033[1;31m checking for ncrack \033[0m"
    which ncrack &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1
    else
      echo -e "\033[1;31mInstalling ncrack using apt-get. This may take several seconds.\033[0m"
      sudo apt-get install ncrack -y &>/dev/null 
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi

    #nping
    echo -e "\033[1;31m checking for nping \033[0m"
    which nping &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1
    else
      echo -e "\033[1;31mInstalling nping using apt-get. This may take several seconds.\033[0m"
      sudo apt-get install nmap -y &>/dev/null 
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi

    #ncat
    echo -e "\033[1;31m checking for ncat \033[0m"
    which netcat &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1
    else
      echo -e "\033[1;31mInstalling ncat using apt-get. This may take several seconds.\033[0m"
      sudo apt-get install netcat -y &>/dev/null 
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi

    #ndiff
    echo -e "\033[1;31m checking for ndiff \033[0m"
    which ndiff &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1
    else
      echo -e "\033[1;31mInstalling ndiff using apt-get. This may take several seconds.\033[0m"
      sudo apt-get install ndiff -y &>/dev/null 
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi

elif [ "$(uname -s)" == "Darwin" ]; then
	echo -e "\033[1;33m checking for Packges in your Mac \033[0m "   
  	echo " "
    
    echo -e "\033[1;31m checking for HOMEBREW \033[0m"
    which brew &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1
    else
      echo -e "\033[1;31mInstalling HomeBrew. This may take several seconds.\033[0m"
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi

    #nmap
    echo -e "\033[1;31m checking for Nmap \033[0m"
    which nmap &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1    
    else
      echo -e "\033[1;31mInstalling Nmap using Homebrew. This may take several seconds.\033[0m"
      brew install nmap &>/dev/null & 
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi

    #fping
    echo -e "\033[1;31m checking for fping \033[0m"
    which fping &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1
    else
      echo -e "\033[1;31mInstalling fping using Homebrew. This may take several seconds.\033[0m"
      brew install fping -y &>/dev/null 
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi

    #ncrack
    echo -e "\033[1;31m checking for ncrack \033[0m"
    which fping &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1
    else
      echo -e "\033[1;31mInstalling ncrack using Homebrew. This may take several seconds.\033[0m"
      brew install ncrack -y &>/dev/null 
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi

    #ncat
    echo -e "\033[1;31m checking for ncat \033[0m"
    which nping &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1
    else
      echo -e "\033[1;31mInstalling ncat using Homebrew. This may take several seconds.\033[0m"
      brew install netcat -y &>/dev/null 
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi

    #ndiff
    echo -e "\033[1;31m checking for ndiff \033[0m"
    which ndiff &>/dev/null
    if [ $(echo $?) -eq "0" ]; then
      sleep 2
      echo -e "\033[1;32m                                                 [installed]\033[0m"
      sleep 1
    else
      echo -e "\033[1;31mInstalling ndiff using Homebrew. This may take several seconds.\033[0m"
      brew install ndiff -y &>/dev/null 
      echo -e "\033[1;32m                                                 [installed]\033[0m"
    fi

else
      echo -e "\033[1;31m Your OS does not support this shell {~_~}. \033[0m"
fi
}


#  ======================================= the code starts here=============================================
UserChecker

plus=0
mkdir -p log-files
while [[ 1 ]]; do
	clear
									# ██████╗ ██████╗  ██████╗ ███████╗ ██████╗ ███╗   ██╗███╗   ██╗ █████╗     ▄▄███▄▄·
									# ██╔══██╗██╔══██╗██╔═══██╗██╔════╝██╔═══██╗████╗  ██║████╗  ██║██╔══██╗    ██╔════╝
									# ██████╔╝██████╔╝██║██╗██║███████╗██║   ██║██╔██╗ ██║██╔██╗ ██║███████║    ███████╗
									# ██╔═══╝ ██╔══██╗██║██║██║╚════██║██║   ██║██║╚██╗██║██║╚██╗██║██╔══██║    ╚════██║
									# ██║     ██║  ██║╚█║████╔╝███████║╚██████╔╝██║ ╚████║██║ ╚████║██║  ██║    ███████║
									# ╚═╝     ╚═╝  ╚═╝ ╚╝╚═══╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═══╝╚═╝  ╚═╝    ╚═▀▀▀══╝


	echo -e "\033[34m 		██████╗ ██████╗  \033[0m\033[2;37m██████╗ ███\033[0m\033[37m████╗ \033[0m\033[2;37m██████╗ ███╗   \033[0m\033[34m██╗███╗   ██╗ █████╗     \033[0m\033[2;37m▄▄███▄▄·    \033[0m "
	echo -e "\033[34m 		██╔══█\033[0m\033[2;37m█╗██╔══██╗██╔═══\033[0m\033[37m██╗██╔════╝\033[0m\033[34m██╔═══██╗████╗  ██║████╗  ██║\033[0m\033[2;37m██╔══██╗    \033[0m\033[37m██╔════╝    \033[0m "
	echo -e "\033[2;37m 		██████╔╝████\033[0m\033[37m██╔╝██║██╗██║\033[0m\033[34m███████╗██║   ██║██╔██╗ ██║\033[0m\033[2;37m██╔██╗ ██║███████║    \033[0m\033[37m███████╗    \033[0m "
	echo -e "\033[2;37m 		██╔═══╝ \033[0m\033[37m██╔══██╗██║\033[0m\033[34m██║██║╚════██║██║   ██║██║╚█\033[0m\033[2;37m█╗██║██║╚██╗██║\033[0m\033[37m██╔══██║    \033[0m\033[34m╚════██║\033[0m "
	echo -e "\033[37m 		██║     ██║  \033[0m\033[34m██║╚█║████╔╝███████║╚██████╔╝\033[0m\033[2;37m██║ ╚████║██║ \033[0m\033[37m╚████║██║  ██║    \033[0m\033[34m███████║    \033[0m "
	echo -e "\033[37m 		╚═╝     \033[0m\033[34m╚═╝  ╚═╝ ╚╝╚═══╝ ╚══════╝ \033[0m\033[2;37m╚═════╝ ╚═╝  \033[0m\033[37m╚═══╝╚═╝  ╚═══╝╚═\033[0m\033[34m╝  ╚═╝    ╚═▀▀▀══╝  \033[0m "
    echo " "
    echo -e " 		                  \033[2;37mPowered by \033[0m\033[34;47mplu5WorlD$ and vishnu\033[0m\033[37mPlu528 \033[0m"
    echo -e "                \033[4;34mhttps://www.facebook.com/plusworldz/ \033[0m\033[37m-- plu5WorlD$ \033[0m"
    echo -e "                \033[4;34mhttps://www.facebook.com/192.168.0.plus \033[0m\033[37m-- vishnuPlu528 \033[0m"
    echo -e "                                                                                            \033[1;31m`timestamp`\033[0m"
    echo "=============================================================================================================================================================================="
    
		echo "         "
		echo "         "
		echo -e "\033[1;4;33m 			Categories of Nmap Scans                     \033[0m"	
		p=$(echo -e "\033[1;4;37;40mSelect a Scan\033[0m")
		s=$(echo "-----------------------------------------------")
		PS3=" $p : "

		sona1=$(echo -e "\033[31mBasic Scans\033[0m")
		sona2=$(echo -e "\033[31mAdvanced Scans\033[0m")
		sona3=$(echo -e "\033[31mOptimized Scans\033[0m")
		sona4=$(echo -e "\033[31mNmap tools\033[0m")
		sona5=$(echo -e "\033[31mSelect Commands directly\033[0m")
		quit=$(echo -e "\033[37;41mQuit or Exit\033[0m")
        
		select sonnas in "$sona1" "$sona2" "$sona3" "$sona4" "$sona5" "$quit"
		do
			case $sonnas in
						$sona1)	echo -e "\033[1;32m 								Basic Scans\033[0m"
								echo "_____________________________________________________________________________" 
								Basicscan  ;;					
						$sona2) echo -e "\033[1;34m 						Advanced Scans\033[0m"
								echo "______________________________________________________________________________"
								Advancedscan;;

						$sona3) echo -e "\033[1;33m 								Optimized Scans\033[0m"
								echo "______________________________________________________________________________"
								Optimizedscan ;;
						
						$sona4) echo -e "\033[1;36m 								Nmap Tools \033[0m"
								echo "______________________________________________________________________________"
								Nmaptools ;;

						$sona5) echo -e "\033[1;30m 								Select a cmd of your wish\033[0m"
								echo "______________________________________________________________________________"
								Cmdselection ;;

						$quit) 	clear
								echo -e "                               \033[1;32m EXITED Successfully \033[0m"
								plus=1
								break ;;

							*) optnum=$(echo -e "\033[5;30;47moption numbers\033[0m")
								echo "enter the" $optnum "provided above."
								break ;;
			esac
			break
		done
		if [[ $plus == 1 ]]; then
			break
		fi
done		
	

	