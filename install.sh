#!/bin/bash

#Tool Name = sizeof
#Author = ASHWINI SAHU (GitHub : ASHWIN990)
#Date = 23/05/2020

if [ $(id -u) -ne 0 ]; then
        echo -e "\e[1;91mTHE INSTALLATION SCRIPT MUST BE RAN AS ROOT\e[0m"
        exit 1
fi

##### Creating the install function #####

install(){
    chmod +x sizeof | echo -e "\e[93;1mCHANGING THE FILE PERMISSIONS"
    mv -f sizeof /usr/bin/ | echo -e "MOVING THE sizeof TO /usr/bin"
    mv -f .man/sizeof.1.gz /usr/local/share/man/man1/sizeof.1.gz
    mandb -q | echo -e "\e[93;1mUPDATING AND INSTALLING THE MANDB\e[0m"
    cd .. && rm -rf sizeof/ | echo -e "DELETING THE GIT CLONED DIRECTORY"
    }


echo -e "INSTALLATION COMPLETED"

##### Calling the install function #####

install