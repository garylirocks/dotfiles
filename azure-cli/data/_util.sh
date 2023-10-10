#!/bin/env bash

DIR=$( cd "$( dirname "$0" )" && pwd )

subListFile="${DIR}/../data/subscription-list.localonly.json"
mgListFile="${DIR}/../data/management-group-list.localonly.json"

if ! [[ -f "${subListFile}" ]]; then
  echo "Subscription list file not found: ${subListFile}"
  echo "Please run az-sub-list first"
  return 1
fi

if ! [[ -f "${mgListFile}" ]]; then
  echo "Management group list file not found: ${mgListFile}"
  echo "Please run az-mg-list first"
  return 1
fi

__get_scope_id() {
  local scopeName=$1
  local subId

  subId=$(jq -r ".[] | select (.name == \"${scopeName}\") | .id" "$subListFile")
  mgId=$(jq -r ".[] | select (.name == \"${scopeName}\") | .id" "$mgListFile")

  if [[ -n "${subId}" ]]; then
    echo "/providers/Microsoft.Subscription/subscriptions/${subId}"
  elif [[ -n "${mgId}" ]]; then
    echo "/providers/Microsoft.Management/managementGroups/${mgId}"
  else
    echo "Unknown scope: ${scopeName}"
    echo "Can't find it in ${subListFile} or ${mgListFile}"
    return 1
  fi
}