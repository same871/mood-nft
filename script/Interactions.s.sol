// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {Script, console} from "forge-std/Script.sol";
import {MoodNft} from "../src/MoodNft.sol";

contract MintMoodNft is Script {
    address moodNftRecentAddress = 0x5FbDB2315678afecb367f032d93F642f64180aa3;

    function run() public {
        mintMoodNft(moodNftRecentAddress);
    }

    function mintMoodNft(address moodNftAddress) public {
        vm.startBroadcast();
        MoodNft(moodNftAddress).mintNft();
        vm.stopBroadcast();
        console.log("Mood NFT minted");
    }
}

contract FlipMoodNft is Script {
    address moodNftRecentAddress = 0x5FbDB2315678afecb367f032d93F642f64180aa3;

    function run() public {
        flipMoodNft(moodNftRecentAddress);
    }

    function flipMoodNft(address contractAddress) public {
        vm.startBroadcast();
        MoodNft(contractAddress).flipMood(0);
        vm.stopBroadcast();
        console.log("NFT mood flippped");
    }
}
