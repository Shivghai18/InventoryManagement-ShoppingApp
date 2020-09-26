//
//  Bill.swift
//  Assignment1
//
//  Created by Shivam Ghai on 2/18/20.
//  Copyright © 2020 Shivam Ghai. All rights reserved.
//

import Foundation

class Bill
{
    public var itemName : String = ""
    var itemQuantity : Int = 0
    var totalPrice : Double = 0
    var price : Double = 0
    var dt : Date? = nil
    
    init(name : String, quan : Int, pr : Double, d : Date)
    {
        itemQuantity=quan
        itemName=name
        price=pr
        dt=d
    }
    
    func calculateTotal()
    {
        totalPrice = Double(itemQuantity) * price
    }
}
