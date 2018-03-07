funcCLEANGIT()
{
    for branch in $(git branch | egrep -v "^(development|\*|master)");
    do
        read -p "Would you like to delete $branch?" -n 1 -r
		echo
		if [[ $REPLY =~ ^[Yy]$ ]]; then
            git branch -D $branch
        fi
    done
}

alias git-clean=funcCLEANGIT
