#!/bin/bash


DB_RESOURCE_GROUP_NAME="sampledb"
DB_VNET="db-vnet"
DB_SUBNET="db-subnet"
# DB_IMAGE=""

# creating resource group - once
# azure group create $DB_RESOURCE_GROUP_NAME eastus

# # creating vnet and subnet - once
# azure network vnet create $DB_RESOURCE_GROUP_NAME $DB_VNET eastus
# azure network vnet subnet create $DB_RESOURCE_GROUP_NAME $DB_VNET $DB_SUBNET eastus --address-prefix 10.0.0.0/24

azure group deployment create $DB_RESOURCE_GROUP_NAME --template-file templates/db1.json
