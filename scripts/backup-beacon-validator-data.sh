#!/bin/bash
# Script to backup the beacon node data directory and the validator wallet.
echo "Backing up beacon data and wallets."
TODAY=$(date +"%d-%m-%Y--%H:%M")

mkdir -p ~/backups/$TODAY/beacon
mkdir -p ~/backups/$TODAY/validator/wallets

# Backup Beacon data
echo "Beginning backup of beacon data..."
cp -R ~/prysm-docker-compose/beacon/. ~/backups/$TODAY/beacon
echo "Backup of Beacon data complete."

# Backup of validator wallet data
echo "Beginning backup of wallets..."
cp -R ~/prysm-docker-compose/validator/wallets/. ~/backups/$TODAY/validator/wallets
echo "Backup of Wallets complete."
