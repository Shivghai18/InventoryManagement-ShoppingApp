//
//  ManagerPageControllerViewController.swift
//  Assignment1
//
//  Created by Shivam Ghai on 2/16/20.
//  Copyright © 2020 Shivam Ghai. All rights reserved.
//

import UIKit

class ManagerPageControllerViewController: UIViewController {
    var historyObj = ManageBill()
    
    var reObj = Inventory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toHistory" {
            let historyController = segue.destination as! UIHistoryViewControllerTableViewController
            historyController.obj2=(historyObj)
        }
        else{
            let restockController = segue.destination as! UIRestockControllerViewController
            restockController.itemsObj=reObj
        }
        
        
        
    }
}
