# StakeContract

A beginner-friendly Solidity project for learning how to stake ERC20 tokens on-chain using Foundry.

## What it does

Users can stake any ERC20 token into the contract. Their balance is tracked on-chain via a mapping.

## Stack

- [Foundry](https://book.getfoundry.sh/) — build, test, deploy
- [OpenZeppelin](https://docs.openzeppelin.com/contracts) — ERC20 interface

## Setup

```bash
git clone --recurse-submodules <your-repo-url>
cd Foundry
make build
```

## Usage

```bash
make build        # compile contracts
make test         # run tests
make test-gas     # run tests with gas report
```

## Deploy locally

```bash
# Terminal 1 — start local blockchain
yarn hardhat node

# Terminal 2 — deploy
make deploy
```

Set your `.env` before deploying:

```bash
PRIVATE_KEY=0xyour_key
RPC_URL=http://127.0.0.1:8545
```

## Project structure

```text
src/
  StakeContract.sol   # main contract
test/
  StakeContract.t.sol # tests
  mocks/
    MockERC20.sol     # mock token for testing
```
