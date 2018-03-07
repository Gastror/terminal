#!/usr/bin/env bash
funcPIPREQ() {
	package_name=$1
	requirements_file=$2
	if [[ -z $requirements_file ]]; then
		requirements_file="./requirements.txt"
	fi
	if [[ -z $package_name ]]; then
		echo "Missing required argument [PACKAGE_NAME]!"
		return
	fi
	pip install $package_name && pip freeze | grep -i $package_name >> $requirements_file
}
alias pipreq=funcPIPREQ
