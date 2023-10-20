#!/usr/bin/env bash

if ! command -v python3 &> /dev/null
then
    echo "python3 could not be found"
    exit 1
fi

# install pip
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
python3 -m pip --version


