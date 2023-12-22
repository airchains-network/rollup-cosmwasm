# Description: Initialize the node

command -v jq > /dev/null 2>&1 || { echo >&2 "jq not installed. More info: https://stedolan.github.io/jq/download/"; exit 1; }
CONFIG_FILE="../config/config.json"
KEY=$(jq -r '.chainInfo.key' $CONFIG_FILE)
CHAINID=$(jq -r '.chainInfo.chainID' $CONFIG_FILE)
MONIKER=$(jq -r '.chainInfo.moniker' $CONFIG_FILE)

CONFIG_FILE="../config/config.json"
KEY=$(jq -r '.chainInfo.key' $CONFIG_FILE)
CHAINID=$(jq -r '.chainInfo.chainID' $CONFIG_FILE)
MONIKER=$(jq -r '.chainInfo.moniker' $CONFIG_FILE)
KEYRING="test"

make build
# Remove the existing data
rm -rf ./private/.airwasmicapp

# Initialize the node
./build/airwasmicd init demo \
    --home ./private/.airwasmicapp \
    --chain-id $CHAINID

#Print the genesis file to verify everything worked
cat ./private/.airwasmicapp/config/genesis.json

# Prepare your account
./build/airwasmicd keys add $KEY \
    --home ./private/.airwasmicapp \
    --keyring-backend $KEYRING

# Add the account to genesis
grep bond_denom ./private/.airwasmicapp/config/genesis.json

# Add the account balance to genesis

./build/airwasmicd genesis add-genesis-account $KEY 100000000stake \
    --home ./private/.airwasmicapp \
    --keyring-backend $KEYRING

# Create a gentx

./build/airwasmicd genesis gentx $KEY 70000000stake \
    --home ./private/.airwasmicapp \
    --keyring-backend $KEYRING \
    --chain-id $CHAINID

# Collect the gentxs
./build/airwasmicd genesis collect-gentxs \
    --home ./private/.airwasmicapp







