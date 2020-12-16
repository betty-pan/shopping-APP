//
//  ViewController.swift
//  shopping APP
//
//  Created by BettyPan on 2020/12/15.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var jessieQtyTextField: UITextField!
    @IBOutlet weak var woodyQtyTextField: UITextField!
    @IBOutlet weak var buzzQtyTextField: UITextField!
    @IBOutlet weak var rexQtyTextField: UITextField!
    @IBOutlet weak var hammQtyTextField: UITextField!
    
    @IBOutlet weak var jessieStepper: UIStepper!
    @IBOutlet weak var woodyStepper: UIStepper!
    @IBOutlet weak var buzzStepper: UIStepper!
    @IBOutlet weak var rexStepper: UIStepper!
    @IBOutlet weak var hammStepper: UIStepper!
    
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
        itemHamm = Int(hammStepper.value)
        
        jessieQtyTextField.text = "\(itemJessie)"
        woodyQtyTextField.text = "\(itemWoody)"
        buzzQtyTextField.text = "\(itemBuzz)"
        rexQtyTextField.text = "\(itemRex)"
        hammQtyTextField.text = "\(itemHamm)"
        calculate()
    }
    
    func calculate() {
        let sum = 299 * itemJessie + 359 * (itemWoody + itemBuzz) + 259 * (itemRex + itemHamm)
        totalLabel.text = "\(sum)"
    }
    
    @IBAction func clearAll(_ sender: UIButton) {
        jessieStepper.value = 0
        woodyStepper.value = 0
        buzzStepper.value = 0
        rexStepper.value = 0
        hammStepper.value = 0
        jessieQtyTextField.text = "0"
        woodyQtyTextField.text = "0"
        buzzQtyTextField.text = "0"
        rexQtyTextField.text = "0"
        hammQtyTextField.text = "0"
        totalLabel.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

