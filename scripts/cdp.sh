#!/usr/bin/env bash

funcCDP()
{
	cd ~/projects/$1;
	if [ -d "venv/" ]; then
		read -p "A virtual environment was found for this project, would you like to execute the activation script? [y/n]" -n 1 -r
		echo
		if [[ $REPLY =~ ^[Yy]$ ]]; then
			source venv/bin/activate
			if [ -e "requirements.txt" ]; then
				read -p "PyPi requirements were found, would you like to install any uninstalled packages? [y/n]" -n 1 -r
				echo
				if [[ $REPLY =~ ^[Yy]$ ]]; then
					pip install -r requirements.txt
				fi
			fi
		fi
	fi

}
_cdp()
{
        local cur=${COMP_WORDS[COMP_CWORD]}
        COMPREPLY=( $(compgen -W '$(\ls ~/projects)' -- $cur) )
}
complete -F _cdp cdp
alias cdp=funcCDP