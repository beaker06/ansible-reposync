#!/bin/bash

echo "Which would you like to run?"
echo "1: Initial setup"
echo "2: Sync the repositories"
read -p "Enter your choice (1 or 2): " choice

if [ "$choice" == "1" ]; then
  ansible-playbook init-setup.yaml -vv -bkK -u $USER
elif [ "$choice" == "2" ]; then
  ansible-playbook reposync.yaml -vv -bkK -u $USER 
else
  echo "Invalid choice. Please enter 1 or 2."
fi


