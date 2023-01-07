pragma solidity ^0.8.17;

contract insuranceCompany{


     //define mapping to store key-value pairs.
    mapping(string => clientRecord) clientRecordMapping;
    
     //organize client records using struct
struct clientRecord
    {
        string id; // client id
        string name; // client name
        string insuranceType; // insurance type
        string typeOFinjury;
        uint age; // age of client
}

   
    // save the client infor
    function savePassangerDetails(string memory id, string memory name, string memory insuranceType, string memory typeOFinjury, uint age) public  {
        clientRecordMapping[id] = clientRecord(id, name, insuranceType,typeOFinjury, age);
    }

}