// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title VerificationRegistry
 * @notice Public transparency registry reference contract
 *         for proof anchoring and verification models.
 *         (Reference contract – real deployed contract is LendrixStakeRegistryV2)
 */
contract VerificationRegistry {
    event ProofRecorded(address indexed user, bytes32 indexed proofHash, uint256 timestamp);

    function recordProof(address user, bytes32 proofHash) external {
        emit ProofRecorded(user, proofHash, block.timestamp);
    }
}
