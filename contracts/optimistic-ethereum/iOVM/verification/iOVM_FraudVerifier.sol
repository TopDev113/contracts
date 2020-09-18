// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;

/* Library Imports */
import { Lib_OVMCodec } from "../../libraries/codec/Lib_OVMCodec.sol";

/**
 * @title iOVM_FraudVerifier
 */
interface iOVM_FraudVerifier {

    /****************************************
     * Public Functions: Fraud Verification *
     ****************************************/

    function initializeFraudVerification(
        bytes32 _preStateRoot,
        Lib_OVMCodec.ChainBatchHeader calldata _preStateRootBatchHeader,
        Lib_OVMCodec.ChainInclusionProof calldata _preStateRootProof,
        Lib_OVMCodec.Transaction calldata _transaction,
        Lib_OVMCodec.ChainBatchHeader calldata _transactionBatchHeader,
        Lib_OVMCodec.ChainInclusionProof calldata _transactionProof
    ) external;

    function finalizeFraudVerification(
        bytes32 _preStateRoot,
        Lib_OVMCodec.ChainBatchHeader calldata _preStateRootBatchHeader,
        Lib_OVMCodec.ChainInclusionProof calldata _preStateRootProof,
        bytes32 _postStateRoot,
        Lib_OVMCodec.ChainBatchHeader calldata _postStateRootBatchHeader,
        Lib_OVMCodec.ChainInclusionProof calldata _postStateRootProof
    ) external;
}
