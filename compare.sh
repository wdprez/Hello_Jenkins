#!/bin/bash
DIFF=$(git diff master)
if [ "$DIFF" == "" ]; then
        echo "equal";
else
        echo "not equal";
fi
