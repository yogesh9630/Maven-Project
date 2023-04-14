#!/bin/bash

USER_TO_MONITOR="yogesh9630"

PR_NUMBER="$1"

PR_DETAILS=$(curl -s https://api.github.com/repos/owner/repo/pulls/$PR_NUMBER)

PR_AUTHOR=$(echo "$PR_DETAILS" | jq -r '.user.login')

if [ "$PR_AUTHOR" = "$USER_TO_MONITOR" ]; then
    # If yes, send an email notification
    TO="yogesh9340@gmail.com"
    SUBJECT="New PR from $PR_AUTHOR: $(echo "$PR_DETAILS" | jq -r '.title')"
    BODY=$(echo "$PR_DETAILS" | jq -r '.html_url')
    echo "$BODY" | mail -s "$SUBJECT" "$TO"
fi
