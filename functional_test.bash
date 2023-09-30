#!/bin/bash

if [ $EUID == 0 ]; then
	echo "Do not use sudo.";
	exit;

fi

echo "--------------------------------------------------------"
echo "Building test binaries"
echo "--------------------------------------------------------"
make all

echo "--------------------------------------------------------"
echo "Testing ECDSA"
echo "--------------------------------------------------------"
./ecdsa-x86
echo ""

echo "--------------------------------------------------------"
echo "Testing Falcon"
echo "--------------------------------------------------------"
./falcon-x86
echo ""

echo "--------------------------------------------------------"
echo "Testing Dilithium"
echo "--------------------------------------------------------"
./dilithium-x86
echo ""

echo "--------------------------------------------------------"
echo "Testing SPHINCS"
echo "--------------------------------------------------------"
./sphincs-x86
echo ""

echo "--------------------------------------------------------"
echo "Testing XMSS"
echo "--------------------------------------------------------"
./xmss-x86
