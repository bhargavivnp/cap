namespace sap.cap.productapp;
using { managed } from '@sap/cds/common';


//aspect

aspect addtionalInfo {
    mfgDate : String;
    expDate : String;
}


//type
type PriceDetails {
    price    : Integer;
    discount : Integer
}

entity Product : addtionalInfo, managed {
    key ID    : String;
        name  : String;
        stock : Integer;
        cost  : PriceDetails; //usage of type in entity
}


entity Supplier {
    key ID           : String;
        suppliername : String;
        address      : String;
        email        : String
}



// entity books
// {
//     key id : UUID;
//     name : String;
//     stock : Integer;
//     price : Integer;
//     author : Association to one author on author.books = $self;
// }

// entity author
// {
//     key ID : UUID;
//     name : String(100);
//     address : String(100);
//     books : Association to one books;
// }
