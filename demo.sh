#!/usr/bin/env bash

########################
# include the magic
########################
. demo-magic.sh

########################
# Configure the options
########################

#
# speed at which to simulate typing. bigger num = faster
#
TYPE_SPEED=30

#
# custom prompt
#
# see http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/bash-prompt-escape-sequences.html for escape sequences
#
DEMO_PROMPT="${BLACK}➜ ${GREEN}\W "

# hide the evidence
clear

p ">>> Verify azure-cli is installed <<<"
pe "az --version"

p ">>> Login to Azure <<<"
pe "az login --use-device-code"

p ">>> Create the resource group <<<"
pe "az group create -l eastus -n nick-az-cli-demo-rg"

p ">>> Display the resource group <<<"
pe "az group show --name nick-az-cli-demo-rg"

p ">>> Create a default Ubuntu VM <<<"
pe "az vm create -n MyVm -g nick-az-cli-demo-rg --image UbuntuLTS --location westus --generate-ssh-keys"