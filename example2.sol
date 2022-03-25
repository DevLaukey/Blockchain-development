pragma solidity ^0.5.0;


contract School{

// adding public to the map makes it visible to all the people in the blockchain.
// so you can either use ...pucliv or you can create a new function to read from the blockchain.
    address public lecturer;
    mapping(address => uint) Students;
    //  function createStudent(address _student) public{
    //      Students[_student]
    //  }

// we put a constructor to join the lec and the msg.sender ..
// it is safe as the constructor runs only one


    modifier islecturer(){
        // instead of if conditional
        require(msg.sender == lecturer, "Not Authorized");
        _;
    }
    // modifier isStudent(){
    //     // instead of if conditional
    //     require(msg.sender != student, "Not a class member");
    //     _;
    // }

    constructor()public{
        lecturer = msg.sender;
    }
     function setScore(address _student, uint _score) public islecturer() returns(bool){
         Students[_student] = _score;
         return true;
     }
  
     function getScore(address _student) public view  returns(uint){
        require(Students[msg.sender] != 0, "Not a student");
         return Students[_student];
     }
    
}

// Works with internal as it inherits.

// contract VC is School{
//     function readScore(address _student) public view returns(uint){
//         return Students[_student];
//     }
// }