#!/bin/bash
# MacOS and Ubuntu container builder and executer
# Formatting
GREEN='\033[0;32m'        # Green
BIGreen='\033[1;92m'      # Green
NC='\033[0m' # No Colour

# Say something nice to the user. Note, $USER, is login account credential.
# Type 'whoami' to see who you are in Linux.
printf "\n [+] ${BIGreen} Hello ${USER}! Setting up your working container.${NC}\n [+]  ${BIGreen}You may be asked to enter your password.${NC}\n"

# Run container:
docker run --rm -it -p 8501:8501 -v $PWD:/root geneplayer

# return file ownership to user
sudo chown ${USER} 0_out/
sudo chown ${USER} 0_out/*

printf "\n  [+] ${BIGreen} The working container is now closed. ${NC}\n"
