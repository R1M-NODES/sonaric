#!/bin/bash

source <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/common.sh)

printLogo

if ! command -v docker &> /dev/null; then
printGreen "Install docker and docker compose"
bash <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/docker-install.sh)
else
    printGreen "Docker is already installed. Skipping installation."
fi

echo -e "${YELLOW}Install Sonaric...${NC}"
sh -c "$(curl -fsSL http://get.sonaric.xyz/scripts/install.sh)"
echo -e "${GREEN}Install done!${NC}"
