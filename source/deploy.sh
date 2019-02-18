#!/bin/bash

#color
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LRED='\033[1;31m'
LGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LBLUE='\033[1;34m'
LPURPLE='\033[1;35m'
LCYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

echo -e "${GREEN}Deploying updates to GitHub...${NC}"

# build the project
hugo -t er

# go to public folder
cd public

# add changes to git
git add .

# commit changes
msg="rebuilding site `date`"
if [ $# -eq 1 ]
    then msg="$1"
fi
git commit -m "$msg"

# push source
git push

# go to project root
cd ..