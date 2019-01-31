#!/bin/bash

function checker {
if [ "$(uname -s)" == "Linux" ]; then
	chmod u+x linuxPackages.sh
	./linuxPackages.sh
	chmod u+x Prasonnas_scanner.sh
	sudo ./Prasonnas_scanner.sh

elif [ "$(uname -s)" == "Darwin" ]; then
	chmod u+x macPackages.sh
	./macPackages.sh
	chmod u+x Prasonnas_scanner.sh
	sudo ./Prasonnas_scanner.sh
else
      echo -e "\033[1;31m Your OS does not support this shell {~_~}. \033[0m"
fi
}

checker