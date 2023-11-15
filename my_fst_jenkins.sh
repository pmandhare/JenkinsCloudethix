#!/bin/bash

if [ "$SHOW" == "true" ]; then
    echo "Hello, $NAME $LASTNAME"
else
    echo "If you want to see the names, submit values for the 3rd parameter"
fi
