#!/bin/bash

set -e

for PLAYBOOK in `find playbooks -type f -name '*.yml'`;
do
    for INVENTORY in `find inventories -mindepth 1 -maxdepth 1 -type d`;
    do
        echo check $INVENTORY $PLAYBOOK
        ansible-playbook -i $INVENTORY --syntax-check $PLAYBOOK
    done
done
