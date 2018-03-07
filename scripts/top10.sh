#!/usr/bin/env bash
funcTOP10 () {
    history | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -nr | head;
}
alias top10=funcTOP10