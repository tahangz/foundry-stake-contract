-include .env

# Default target
all: clean install build

# Clean build artifacts
clean:; forge clean

# Remove all dependencies
remove:; rm -rf .gitmodules && rm -rf .git/modules/* && rm -rf lib && touch .gitmodules && git add . && git commit -m "chore: remove modules"

# Install dependencies
install:; forge install foundry-rs/forge-std && forge install OpenZeppelin/openzeppelin-contracts

# Update dependencies
update:; forge update

# Build
build:; forge build

# Run tests
test:; forge test -vv

# Run tests with gas report
test-gas:; forge test -vv --gas-report

# Deploy StakeContract (requires PRIVATE_KEY and RPC_URL in .env)
deploy:; forge create src/StakeContract.sol:StakeContract \
	--private-key ${PRIVATE_KEY} \
	--rpc-url ${RPC_URL}
