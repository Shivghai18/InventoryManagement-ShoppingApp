//
//  UIHistoryViewControllerTableViewController.swift
//  Assignment1
//
//  Created by Shivam Ghai on 2/18/20.
//  Copyright © 2020 Shivam Ghai. All rights reserved.
//

import UIKit

class UIHistoryViewControllerTableViewController: UITableViewController {
    var obj2 = ManageBill()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableRef.reloadData()
    }
    var clicked : Int = 0
    @IBOutlet var tableRef: UITableView!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let BillDetails = segue.destination as! BillDetailsViewController
        
        BillDetails.amt = "\(obj2.arr[clicked].totalPrice)"
        BillDetails.dt=obj2.arr[clicked].dt! 
        BillDetails.itname="\(obj2.arr[clicked].itemName)"
        BillDetails.quan="\(obj2.arr[clicked].itemQuantity)"
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return obj2.arr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text=obj2.arr[indexPath.row].itemName
        
        cell.detailTextLabel?.text="\(obj2.arr[indexPath.row].itemQuantity)"

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        clicked=indexPath.row
        performSegue(withIdentifier: "seg", sender: self)
        
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
