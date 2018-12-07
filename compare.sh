#!/bin/bash
DIFF=$(git diff origin master)
if [ "$DIFF" == "" ]; then
        echo "equal";
else
        echo "not equal";
fi
