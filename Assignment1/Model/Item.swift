//
//  Item.swift
//  Assignment1
//
//  Created by Shivam Ghai on 2/16/20.
//  Copyright © 2020 Shivam Ghai. All rights reserved.
//

import Foundation
class Item
{
    var quantity : Int = 0
    var price : Double = 0
    var name : String = ""
    
    init()
    {}
    
    init( name : String, quan : Int, price : Double)
    {
        self.name=name
        self.price=price
        self.quantity=quan
    }
    
    func decreaseQuantity(quan : Int)
    {
        quantity=quantity-quan
    }
    
    func increaseQuantity(quan : Int)
    {
        quantity=quantity+quan
    }
    
}
