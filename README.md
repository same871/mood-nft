# Mood NFT

- NFT that reflects the mood of the owner

[Mood NFT repo](https://github.com/same871/moodNft-repo)

_This repo works with anvil chain on localhost_

<br/>
<p align="center">
<img src="./img/happy.svg" width="225" alt="NFT Happy">
<img src="./img/sad.svg" width="225" alt="NFT Sad">
</p>
<br/>

# Getting Started

## Requirements

- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`
- [foundry](https://foundry-up.org)
  - You'll have to install foundry in order to work with this repo
  - You'll know you've installed foundry right if you can run:
    - `forge --version` and get output like: `x.x.x`

## Quickstart

```bash
git clone https://github.com/same871/moodNft-repo
cd moodNft-repo
forge
```

# Usage

Deploy:

- If you have installed Makefile in your pc run

```bash
make deploy
```

- if you haven't installed Makefile use forge instead

```bash
forge script script/DeployMoodNft.s.sol:DeployMoodNft --rpc-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast
```

## Testing

```bash
forge test
```

### Test Coverage

```bash
forge coverage
```

## To mint an NFT on your terminal run the command

```bash
cast send 0x5FbDB2315678afecb367f032d93F642f64180aa3 "mintNft()" --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```

### To flip the mood of NFT run the command

```bash
cast send 0x5FbDB2315678afecb367f032d93F642f64180aa3 "flipMood(uint256)" 0 --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```

- One have to mint a MoodNFT first before they are able to flip the Mood Of the NFT
- To flip the mood you have to pass the tokenID as an argument to the function.
