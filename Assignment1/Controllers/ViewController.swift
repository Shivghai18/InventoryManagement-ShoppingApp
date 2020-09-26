//
//  ViewController.swift
//  Assignment1
//
//  Created by Shivam Ghai on 2/15/20.
//  Copyright © 2020 Shivam Ghai. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    @IBOutlet weak var txtQuantity: UILabel!
    @IBOutlet weak var lblDisplay: UILabel!
    @IBOutlet weak var itemName: UILabel!
    static var cnt : Int = 0
    var arrayoItems : [Item] = [Item(name: "Pants",quan: 5,price: 20),Item(name: "Shirt",quan: 5,price: 20), Item(name: "T-Shirt",quan: 5,price: 20), Item(name: "Track",quan: 5,price: 20), Item(name: "Hoodies",quan: 5,price: 20),Item(name: "Tops",quan: 5,price: 20), Item(name: "Jeans",quan: 5,price: 20), Item(name: "Shoes",quan: 5,price: 20)]
    
    var obj = ManageBill()
    
    var i=Inventory()
    
    var price : Double = 0
    var quantity :  Int = 0
    var rowClicked : Int = 0
    var name : String = ""
   
    
        
    
    
    @IBAction func numberClicked(_ sender: UIButton) {
        switch(sender.tag)
        {
        case 1:
            if let k=txtQuantity.text
            {
                txtQuantity.text = k + "1"
            
            }
            break
        case 2:
            if let k=txtQuantity.text
            {
                txtQuantity.text = k + "2"
            }
            break
        case 3:
            if let k=txtQuantity.text
            {
                txtQuantity.text = k + "3"
            }
            break
        case 4:
            if let k=txtQuantity.text
            {
                txtQuantity.text = k + "4"
            }
            break
        case 5:
            if let k=txtQuantity.text
            {
                txtQuantity.text = k + "5"
            }
            break
        case 6:
            if let k=txtQuantity.text
            {
                txtQuantity.text = k + "6"
            }
            break
        case 7:
            if let k=txtQuantity.text
            {
                txtQuantity.text = k + "7"
            }
            break
        case 8:
            if let k=txtQuantity.text
            {
                txtQuantity.text = k + "8"
            }
            break
        case 9:
            if let k=txtQuantity.text
            {
                txtQuantity.text = k + "9"
            }
            break
        case 0:
            if let k=txtQuantity.text
            {
                txtQuantity.text = k + "0"
            }
            break
        case 10:
                txtQuantity.text = ""
            break
        default:
            do {
                self.txtQuantity.text="Error"
            }
        }
}
    
    @IBOutlet weak var picker: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return i.itemArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        rowClicked=row
        name = i.itemArray[row].name
        quantity=i.itemArray[row].quantity
        price=i.itemArray[row].price
        itemName.text = name
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      
            return i.itemArray[row].name + "  \(i.itemArray[row].quantity)" + "  \(i.itemArray[row].price)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for tempItem in arrayoItems
        {
            i.addItems(item: tempItem)
        }
        self.picker.dataSource=self
        self.picker.delegate=self
        
    }
    
    
    @IBAction func buyButton(_ sender: UIButton) {
        
        itemName.text = name
        
        if let x : Int = Int(txtQuantity.text!+"")
        {
            if(x>quantity)
            {
                lblDisplay.text = "The quantity you want is not in stock"
            }
            else
            {
                let calculate=Double(x)*price
                lblDisplay.text = "\(calculate)"
                
                i.itemArray[rowClicked].decreaseQuantity(quan: x)
                quantity=quantity-x
                self.picker.reloadAllComponents()
                let date = Date()
                let b : Bill = Bill(name: name, quan: x,pr: price,d: date)
                b.calculateTotal()
                obj.arr.append(b)
            }
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let ManagerControl = segue.destination as? ManagerPageControllerViewController else{
            print("error")
            return
        }
        
        
        ManagerControl.historyObj=obj
        
        ManagerControl.reObj=i;
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
        self.picker.reloadAllComponents()
    }
}




