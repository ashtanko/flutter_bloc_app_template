#!/bin/bash

# Script to generate Android release keystore on Ubuntu
# Prints info for gradle.properties

echo "=== Android Release Keystore Generator ==="

read -p "Enter keystore directory (default: ./keys): " KEY_DIR
KEY_DIR=${KEY_DIR:-./keys}
mkdir -p "$KEY_DIR"

read -p "Enter keystore name (default: release-key.jks): " KEYSTORE_NAME
KEYSTORE_NAME=${KEYSTORE_NAME:-release-key.jks}

read -p "Enter key alias (default: key0): " KEY_ALIAS
KEY_ALIAS=${KEY_ALIAS:-key0}

read -s -p "Enter keystore password: " KEY_PASS
echo
read -s -p "Confirm keystore password: " KEY_PASS_CONFIRM
echo

if [ "$KEY_PASS" != "$KEY_PASS_CONFIRM" ]; then
    echo "❌ Passwords do not match!"
    exit 1
fi

KEY_PATH="$KEY_DIR/$KEYSTORE_NAME"

echo
echo "Generating keystore at $KEY_PATH ..."

keytool -genkeypair \
  -v \
  -keystore "$KEY_PATH" \
  -alias "$KEY_ALIAS" \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000 \
  -storepass "$KEY_PASS" \
  -keypass "$KEY_PASS" \
  -dname "CN=Your Name, OU=Dev, O=Company, L=City, ST=State, C=US"

echo
echo "🎉 Keystore generated!"

echo
echo "Add this to your gradle.properties:"
echo "-----------------------------------"
echo "storePassword=$KEY_PASS"
echo "keyPassword=$KEY_PASS"
echo "keyAlias=$KEY_ALIAS"
echo "storeFile=$KEY_PATH"
echo "-----------------------------------"
