#!/bin/bash
BR=$(git branch)
echo "$BR"
DIFF=$(git diff origin master)
if [ "$DIFF" == "" ]; then
        echo "equal";
else
        echo "not equal";
fi
