// declare intention of the contract 

// on production we specify the versions
pragma solidity ^0.8.13;

// Declare and name the contract
contract web2contract{


    // pure-- no data to the blockchain only read

    function printHello() public pure returns(string memory){
        return "Hello world";
    }
}

contract trial2{
    string statement;
    function writeStatement(string memory worlds)
    public returns (bool){
        statement = worlds;
        return true;
        
    }
// View as it is not pure

    function printHello() public view returns(string memory){
        return statement;
    }
}