//
//  ViewController.swift
//  salesTax
//
//  Created by Evangelos Marougkas on 13/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTaxTxt: UITextField!
    @IBOutlet weak var totalPriceLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = ""
        
    } // close override func


    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceLbl.text = "$\(totalPrice)"
        
    }  // close @IBAction func
    
    
} // close class ViewController:


