#!/bin/bash

# Script to generate Android release keystore on Ubuntu

echo "=== Android Release Keystore Generator ==="

read -p "Enter keystore name (default: release-key.jks): " KEYSTORE_NAME
KEYSTORE_NAME=${KEYSTORE_NAME:-release-key.jks}

read -p "Enter key alias (default: release): " KEY_ALIAS
KEY_ALIAS=${KEY_ALIAS:-release}

read -s -p "Enter keystore password: " KEY_PASS
echo
read -s -p "Confirm keystore password: " KEY_PASS_CONFIRM
echo

if [ "$KEY_PASS" != "$KEY_PASS_CONFIRM" ]; then
    echo "❌ Passwords do not match!"
    exit 1
fi

echo
echo "Generating keystore..."

keytool -genkeypair \
  -v \
  -keystore "$KEYSTORE_NAME" \
  -alias "$KEY_ALIAS" \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000 \
  -storepass "$KEY_PASS" \
  -keypass "$KEY_PASS" \
  -dname "CN=Your Name, OU=Dev, O=Company, L=City, ST=State, C=US"

echo
echo "🎉 Keystore generated: $KEYSTORE_NAME"
echo "👉 Alias: $KEY_ALIAS"
echo "👉 Password: (hidden)"
echo
echo "Keep this file safe!"
