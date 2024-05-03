// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentID {

   
    mapping(address => uint256) public studentNumbers;

   
    event StudentRegistered(address indexed studentAddress, uint256 studentNumber);

   
    function registerStudent(address studentAddress) public {
        require(studentNumbers[studentAddress] == 0, "Student already registered");
        uint256 studentNumber = block.timestamp;
        studentNumbers[studentAddress] = studentNumber;
        emit StudentRegistered(studentAddress, studentNumber);
    }

    function getStudentNumber() public view returns (uint256) {
        return studentNumbers[msg.sender];
    }
}
