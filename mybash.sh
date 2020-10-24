#!/bin/bash
# prints the input

function internsctl() {
version="v0.1.0"
if [ $1 = "--version" ]; then
	echo "current version is  $version "
elif [[ ( $1 = "cpu" ) && ( $2 = "getinfo" ) ]]; then
	lscpu
elif [[ ( $1 = "memory" ) && ( $2 = "getinfo" ) ]]; then
	free
elif [[ ( $1 = "user" ) && ( $2 = "create" ) ]]; then
	sudo adduser $3
elif [[ ( $1 = "user" ) && ( $2 = "list" ) ]]; then
	{
		if [[ ( $1 = "user" ) && ( $2 = "list" ) && ( $3 = "--sudo-only" ) ]]; then
	 		grep '^sudo:.*$' /etc/group | cut -d: -f4
		else
			cat /etc/passwd | cut -d: -f1
		fi
	}
else
	echo "please enter valid arguements"
fi

}

