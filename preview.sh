#!/bin/bash

# Load nvm (node version manager), install node (version in .nvmrc), and npm install packages
[ -s "$HOME/.nvm/nvm.sh" ] && source "$HOME/.nvm/nvm.sh" && nvm install
# Install npm packages
npm install

# Setup environment variables
source ../app/env.sh
export ROOT_PORT=3000
export ROOT_URL=http://admin-dev.honehq.com:$ROOT_PORT

npm run start
