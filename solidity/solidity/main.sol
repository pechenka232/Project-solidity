// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageDemo {
    uint256 public storedData;  

    constructor(uint256 _initialData) {
        storedData = _initialData;
    }

    function updateData(uint256 _newData) public {
        storedData = _newData;  

        uint256 tempData = storedData * 2;  
        uint256 result = calculateData(tempData);  

        storedData = result;
    }

    function calculateData(uint256 _multiplier) public pure returns (uint256) {
        uint256 data = _multiplier + 10;  
        return data;
    }

    function processInputData(uint256[] calldata _inputData) external pure returns (uint256[] memory) {
        uint256[] memory outputData = new uint256[](_inputData.length);  
        for (uint256 i = 0; i < _inputData.length; i++) {
            outputData[i] = _inputData[i] * 2;
        }
        return outputData;
    }

    function getData() public view returns (uint256) {
        return storedData;
    }
}
