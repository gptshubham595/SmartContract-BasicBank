pragma solidity 0.4.25;

contract Bank{
    
    int bal;
    
    constructor() public{
        bal=1;
    }
    function getBal() view public returns(int){
        return bal;
    }
    function withdraw(int amt) public{
        if(bal>=amt && amt>0){
            bal=bal-amt;
        }
    }
    function deposit(int amt) public{
        bal=bal+amt;
    }
}