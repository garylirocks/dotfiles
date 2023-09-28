#!/bin/env bash

if ! which brew; then
  echo "Install homebrew first"
  exit 1
fi

brew install gh
