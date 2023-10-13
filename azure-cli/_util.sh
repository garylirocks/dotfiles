#!/bin/env bash

AZURE_CACHE_DIR="${ZSH_LOCAL}/azure"

if ! [[ -d "${AZURE_CACHE_DIR}" ]]; then
  echo "Creating Azure cache dir: ${AZURE_CACHE_DIR}"
  mkdir "${AZURE_CACHE_DIR}"
fi

AZ_SUBSCRIPTION_LIST_FILE="${AZURE_CACHE_DIR}/subscription-list.localonly.json"
AZ_MANAGEMENT_GROUP_LIST_FILE="${AZURE_CACHE_DIR}/management-group-list.localonly.json"

if ! [[ -f "${AZ_SUBSCRIPTION_LIST_FILE}" ]]; then
  echo "Subscription list file not found: ${AZ_SUBSCRIPTION_LIST_FILE}"
  echo "Please run az-sub-list first"
  return 1
fi

if ! [[ -f "${AZ_MANAGEMENT_GROUP_LIST_FILE}" ]]; then
  echo "Management group list file not found: ${AZ_MANAGEMENT_GROUP_LIST_FILE}"
  echo "Please run az-mg-list first"
  return 1
fi

__get_scope_id() {
  local scopeName=$1
  local subId

  subId=$(jq -r ".[] | select (.name == \"${scopeName}\") | .id" "$AZ_SUBSCRIPTION_LIST_FILE")
  mgId=$(jq -r ".[] | select (.name == \"${scopeName}\") | .id" "$AZ_MANAGEMENT_GROUP_LIST_FILE")

  if [[ -n "${subId}" ]]; then
    echo "/providers/Microsoft.Subscription/subscriptions/${subId}"
  elif [[ -n "${mgId}" ]]; then
    echo "/providers/Microsoft.Management/managementGroups/${mgId}"
  else
    echo "Unknown scope: ${scopeName}"
    echo "Can't find it in ${AZ_SUBSCRIPTION_LIST_FILE} or ${AZ_MANAGEMENT_GROUP_LIST_FILE}"
    return 1
  fi
}