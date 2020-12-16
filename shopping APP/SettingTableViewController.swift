//
//  SettingTableViewController.swift
//  shopping APP
//
//  Created by BettyPan on 2020/12/15.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    @IBOutlet weak var jessieQtyTextField: UITextField!
    @IBOutlet weak var woodyQtyTextField: UITextField!
    @IBOutlet weak var buzzQtyTextField: UITextField!
    @IBOutlet weak var rexQtyTextField: UITextField!
    @IBOutlet weak var hammQtyTextField: UITextField!
    
    @IBOutlet weak var jessieStepper: UIStepper!
    @IBOutlet weak var woodyStepper: UIStepper!
    @IBOutlet weak var buzzStepper: UIStepper!
    @IBOutlet weak var rexStepper: UIStepper!
    @IBOutlet weak var hammStepper: UITableViewCell!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var itemJessie:Int = 0
    var itemWoody:Int = 0
    var itemBuzz:Int = 0
    var itemRex:Int = 0
    var itemHamm:Int = 0
    
    @IBAction func changeQty(_ sender: UIStepper) {
        itemJessie = Int(jessieStepper.value)
        itemWoody = Int(woodyStepper.value)
        itemBuzz = Int(buzzStepper.value)
        itemRex = Int(rexStepper.value)
        itemHamm = Int(hammStepper.hashValue)
        
        jessieQtyTextField.text = "\(itemJessie)"
        woodyQtyTextField.text = "\(itemWoody)"
        buzzQtyTextField.text = "\(itemBuzz)"
        rexQtyTextField.text = "\(itemRex)"
        hammQtyTextField.text = "\(itemHamm)"
        
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
