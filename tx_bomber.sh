#!/bin/bash

# ! one time: before running this script
: '
# create account to send tokens to
./build/airwasmicd keys add aakash --home ./private/.airwasmicapp --keyring-backend test

# get account address
./build/airwasmicd keys show -a noooblienkeeda --home ./private/.airwasmicapp --keyring-backend test
# wasm1pckd7u7fzqljhs2g76n5levzddwp72g32tllh8
./build/airwasmicd keys show -a aakash --home ./private/.airwasmicapp --keyring-backend test
# wasm1u4z7w6596zm4sdu5pp3a00tysqdmpq2dvpf5nc

# check balance on each account
./build/airwasmicd  query bank balances wasm1pckd7u7fzqljhs2g76n5levzddwp72g32tllh8
./build/airwasmicd  query bank balances wasm1u4z7w6596zm4sdu5pp3a00tysqdmpq2dvpf5nc
'

noooblienkeeda="wasm1hlqnmpsrz8apdfnc3lkt0zuyqraz0ga6gaj2wy"
aakash="wasm1st0yrne6rv0d837j8y67vwxlvecg3027jfv3k3"

txCount=1
while true
do
#    ./build/airwasmicd  tx bank send wasm1pckd7u7fzqljhs2g76n5levzddwp72g32tllh8 wasm1u4z7w6596zm4sdu5pp3a00tysqdmpq2dvpf5nc 1stake --home ./private/.airwasmicapp --keyring-backend test -y
    ./build/airwasmicd  tx bank send $noooblienkeeda $aakash 1stake --home ./private/.airwasmicapp --keyring-backend test -y
   echo "\ntrasaction sended: "$txCount
   txCount=$((txCount+1))
   sleep 2
done