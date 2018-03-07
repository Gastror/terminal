#!/usr/bin/env bash

funcDJMAN ()
{
    COMMAND = "./manage.py "
    for a in ${BASH_ARGV[*]} ; do
      COMMAND=${COMMAND}${a}
    done
    echo "$COMMAND"
}

alias djman=funcDJMAN