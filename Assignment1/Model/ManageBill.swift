//
//  ManageBill.swift
//  Assignment1
//
//  Created by Shivam Ghai on 2/18/20.
//  Copyright © 2020 Shivam Ghai. All rights reserved.
//

import Foundation

class ManageBill
{
    public var arr = [Bill]()
    
    func addBill(b : Bill)
    {
        arr.append(b)
    }
    
    func returnBills()->[Bill]
    {
        return arr
    }
}
