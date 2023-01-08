// SPDX-License-Identifier: GPL-30
pragma solidity ^0.6.9;

contract insuranceCompany{


     //define mapping to store key-value pairs.
    mapping(string => clientRecord) clientRecordMapping;
    
     //organize client records using struct
struct clientRecord
    {
        string id; // client id
        string name; // client name
        string somkingHistrory;  // client injury history
        uint age; // age of client
        uint salePrice;
}

   
    // save the client info
    function saveClientDetails(string memory id, string memory name, string memory somkingHistrory, uint age, uint salePrice) public  {
        clientRecordMapping[id] = clientRecord(id, name, somkingHistrory, age, salePrice);
    }
    // get the client name and insurance paid

    function getClientDetails(string memory id) public  view returns(string memory name, uint salePrice){
        return (clientRecordMapping[id].name, clientRecordMapping[id].salePrice);
    }
    
         uint private term; 
         uint private somkingRate = 3;
         uint private minSalePrice = 200;
         string  private somker = "yes";
         uint public salePrice;
        

         
     function setTerm(uint x) public  {
       term = x;
    }

  function setSomkerChecker(string memory somkingHistrory) public  {
           
    //once term of year set by insurance company, base on client's situtation will calculate the sale price.  
   
    //type one
    //if client is a somker, then sale price for client will be the minument of price * term * somking rate
       if(keccak256(bytes(somkingHistrory)) == keccak256(bytes(somker))) {

         salePrice = term * minSalePrice * somkingRate;

        }
            
           else{
                //type two
               // if isnt a smoker, than the price will be just (term * minSalePrice)
               salePrice = term * minSalePrice;
           }

  }
    

  
     // Receive cryptocoins from its account
     uint public balanceReceived;

 }



