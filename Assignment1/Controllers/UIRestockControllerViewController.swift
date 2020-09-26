//
//  UIRestockControllerViewController.swift
//  Assignment1
//
//  Created by Shivam Ghai on 2/19/20.
//  Copyright © 2020 Shivam Ghai. All rights reserved.
//

import UIKit

class UIRestockControllerViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var itemsObj=Inventory()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsObj.itemArray.count
    }
    
    var price : Double = 0
    var quantity :  Int = 0
    var rowClicked : Int = 0
    var name : String = ""
    
    @IBOutlet weak var displayItems: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2",for: indexPath)
        
        cell2.textLabel?.text = "\(itemsObj.itemArray[indexPath.row].name), Quantity: \(itemsObj.itemArray[indexPath.row].quantity), Price:  \(itemsObj.itemArray[indexPath.row].price)"
        
        return cell2
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
               view.endEditing(true)
               super.touchesBegan(touches, with: event)
           }
    
    @IBAction func cancelButtonClicked(_ sender: Any) {

        txtrestock.text="0"
       
       
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if let str=txtrestock.text
        {
           let x = Int(str)
        if(sender.tag == 0)
        {
            if x==nil {}else{
            itemsObj.itemArray[rowClicked].increaseQuantity(quan: x ?? 0)
            quantity=quantity-x!
            displayItems.reloadData()
        }
        }
        else{}
        }
        
    }
    @IBOutlet weak var txtrestock: UITextField!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        rowClicked=indexPath.row
        name = itemsObj.itemArray[rowClicked].name
        quantity = itemsObj.itemArray[rowClicked].quantity
        price = itemsObj.itemArray[rowClicked].price
        
        
    }
   
    override func viewDidLoad() {
    
        super.viewDidLoad()
        displayItems.dataSource=self
        displayItems.delegate=self
    }
    
}
