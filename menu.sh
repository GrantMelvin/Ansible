#!/bin/bash
echo "Please select an option:"
echo "1. Create an account"
echo "2. Install NVIDIA drivers"
echo "3. Ping machine"
echo "4. Create authorized_key"
echo "5. Create user environments"

# INVENTORY = "$./inventory/hosts.yaml"

read option

if [ "$option" == "1" ]; then
        ansible-playbook -i ./inventory/hosts.yaml ./playbooks/createAccount.yaml
elif [ "$option" == "2" ]; then
	ansible-playbook -i ./inventory/hosts.yaml ./playbooks/updateDrivers.yaml
elif [ "$option" == "3" ]; then
	ansible-playbook -i ./inventory/hosts.yaml ./playbooks/ping.yaml
elif [ "$option" == "4" ]; then
	ansible-playbook -i ./inventory/hosts.yaml ./playbooks/createAuthKey.yaml
elif [ "$option" == "5" ]; then
	ansible-playbook -i ./inventory/hosts.yaml ./playbooks/setUsers.yaml
else
	echo "Incorrect option"
fi
