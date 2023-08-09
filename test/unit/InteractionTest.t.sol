// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {Test} from "forge-std/Test.sol";
import {MintMoodNft, FlipMoodNft} from "../../script/Interactions.s.sol";
import {MoodNft} from "../../src/MoodNft.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";

contract InteractionTest is Test {
    MintMoodNft mintMoodNft;
    FlipMoodNft flipMoodNft;
    MoodNft moodNft;
    DeployMoodNft deployer;
    address private moodNftRecentAddress;

    address USER = makeAddr("user");

    function setUp() public {
        mintMoodNft = new MintMoodNft();
        flipMoodNft = new FlipMoodNft();
        deployer = new DeployMoodNft();
        moodNft = deployer.run();

        moodNftRecentAddress = 0x5FbDB2315678afecb367f032d93F642f64180aa3;
    }

    function testMintsMoodNft() public {
        // vm.prank(USER);
        mintMoodNft.mintMoodNft(address(moodNft));
    }

    modifier mintsMoodNft() {
        mintMoodNft.mintMoodNft(address(moodNft));
        _;
    }

    function testFlipNftMood() public mintsMoodNft {
        flipMoodNft.flipMoodNft(address(moodNft));
    }
}
