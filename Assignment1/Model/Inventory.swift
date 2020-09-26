//
//  Inventory.swift
//  Assignment1
//
//  Created by Shivam Ghai on 2/16/20.
//  Copyright © 2020 Shivam Ghai. All rights reserved.
//

import Foundation

class Inventory{
    
    var itemArray=[Item]()
    
    init()
    {}
   
    
    func addItems(item : Item)
    {
        itemArray.append(item)
    }
    
    

    func decreaseQuantity(itemIndex : Int, quan : Int )
    {
        itemArray[itemIndex].decreaseQuantity(quan: quan)
        
    }
    
    func increaseQuantity(itemIndex : Int, quan : Int )
    {
        itemArray[itemIndex].increaseQuantity(quan: quan)
        
    }
    
}
