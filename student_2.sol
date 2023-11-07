// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;
contract StudentData {
    struct Student {
        string name;
        uint256 rollNumber;
        uint256 age;
    }
    Student[] public students;
    function addStudent(string memory _name, uint256 _rollNumber, uint256 _age) public {
        Student memory newStudent = Student(_name, _rollNumber, _age);
        students.push(newStudent);
    }
    function getStudent(uint256 index) public view returns (string memory, uint256, uint256) {
        require(index < students.length, "Student does not exist");
        Student storage student = students[index];
        return (student.name, student.rollNumber, student.age);
    }
    fallback() external payable {}
    receive() external payable {}
}
