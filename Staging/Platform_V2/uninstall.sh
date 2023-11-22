#!/bin/bash

# Confirmation prompt
read -r -p "Are you sure you want to uninstall all the charts? (yes/no): " confirm
if [[ "$confirm" != "yes" ]]; then
    echo "Installation aborted."
    exit 0
fi

# Confirmation prompt
read -r -p "Confirmm Again ! (yes/no): " confirm
if [[ "$confirm" != "yes" ]]; then
    echo "Installation aborted."
    exit 0
fi


helm delete  auth-v2 -n staging
helm delete  platform-v2 -n staging
helm delete  history-v2 -n staging
helm delete  tag-v2 -n staging
helm delete  alarm-v2 -n staging
