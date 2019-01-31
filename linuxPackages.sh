#!/bin/bash

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

UserChecker
	
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