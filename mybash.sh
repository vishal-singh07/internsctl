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
else
	echo "please enter valid arguements"
fi

}

