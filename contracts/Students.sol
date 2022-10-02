// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract StudentDatabase{
    uint public Counter = 0;
    address public owner;
    uint256[] addStudent;

    // stuct of students data. The variables inside the struct are state variables.
    struct Student{
        uint256 studentId;
        string name;
        uint256 age;
        uint256 level;
        string department;
        uint256 grade;
        bool  isPromoted;
    }

    mapping (uint256 => Student) students;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(
            msg.sender == owner,
            "caller is not the owner"
        );
        _;
    }


    //A function that adds a new students data to the list
    //The memory keyword is used to store data temporarily
    function addStudentData(
        uint256 studentId,
        string memory _name,
        uint256 _age,
        uint256 _level,
        string memory _department,
        uint256 _grade,
        bool  _isPromoted
    ) public returns(bool success) {
        students[studentId].name = _name;
        students[studentId].age = _age;
        students[studentId].level = _level;
        students[studentId].department = _department;
        students[studentId].grade = _grade;
        students[studentId].isPromoted= _isPromoted;

        Counter = Counter + 1;

        addStudent.push(studentId);
        return true;
        
    }

    // Function that gets the students data inputed
    function getStudentData( uint256 studentId) public onlyOwner view returns(
        string memory, uint256, uint256, string memory, uint256,bool
    ) {

            return(
                students[studentId].name,
                students[studentId].age,
                students[studentId].level,
                students[studentId].department,
                students[studentId].grade,
                students[studentId].isPromoted

            );
        }
             
}
