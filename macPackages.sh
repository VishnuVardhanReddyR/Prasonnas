#!/bin/bash

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
      brew install nmap &>/dev/null 
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