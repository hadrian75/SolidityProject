// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract List {

    struct Profile {
        string FirstName;
        string LastName;
        uint256 Age;
        address Address;
    }

    Profile[] public Output;

    uint public Amount=0;
    bool public Status;

    function AddressHash(string memory _FirstName, string memory _LastName, uint256 _DateOfBirth) external pure returns (bytes32 ) {
        return keccak256(abi.encode(_FirstName, _LastName, _DateOfBirth)); //keccak256 is for hashing the data
    }
    
    function Input(string memory _FirstName, string memory _LastName, uint256 _Age, address _Address) public {
        Output.push(Profile(_FirstName, _LastName, _Age, _Address));
        Amount++;
        Status=true;
    }

}

