#!/bin/bash
# prints the input

function internsctl() {
version="v0.1.0"
if [ $1 = "--version" ]; then
	echo "current version is  $version "
elif [[ ( $1 = "cpu" ) && ( $2 = "getinfo" ) ]]; then
	lscpu

else
	echo "please enter valid arguements"
fi

}

