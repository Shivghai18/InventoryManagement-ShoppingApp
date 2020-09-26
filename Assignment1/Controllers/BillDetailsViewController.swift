//
//  BillDetailsViewController.swift
//  Assignment1
//
//  Created by Shivam Ghai on 2020-02-20.
//  Copyright © 2020 Shivam Ghai. All rights reserved.
//

import UIKit

class BillDetailsViewController: UIViewController {
    var itname : String?
    var amt : String?
    var dt = Date()
    var quan : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Amount.text=amt
     
        quantity.text=quan
        ItemName.text=itname

        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        
        let result = formatter.string(from: dt)
        Dt.text=result
    }
    
    @IBAction func DoneClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var Amount: UILabel!
    @IBOutlet weak var ItemName: UILabel!
    
    @IBOutlet weak var Dt: UILabel!
    
    @IBOutlet weak var quantity: UILabel!
}
