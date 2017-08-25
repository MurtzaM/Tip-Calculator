//
//  ViewController.swift
//  TipCalculator
//
//  Created by Murtza Manzur on 8/21/17.
//  Copyright © 2017 mm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var billField: UITextField!
    @IBOutlet var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        billField.becomeFirstResponder()
        UIView.animate(withDuration: 1.0) {
            self.tipLabel.center.x += self.view.bounds.width
            self.totalLabel.center.x += self.view.bounds.width
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tipControl.selectedSegmentIndex = getDefaultTip()
        tipLabel.center.x  -= view.bounds.width
        totalLabel.center.x  -= view.bounds.width
        //Recalculate tip in case default tip percentage setting changed
        self.calculateTip(sender:tipControl)
    }
    
    func getDefaultTip() -> Int {
        let defaults = UserDefaults.standard
        return defaults.integer(forKey: "defaultTip")
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.18,0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        
        //Get local currency symbol
        let locale = Locale.current //NSLocale.current
        let currencySymbol = locale.currencySymbol

        //Calculate tip
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(currencySymbol!) + String(format: "%.2f", tip)
        totalLabel.text = String(currencySymbol!) + String(format: "%.2f", total)
    }

    @IBAction func controlChanged(_ sender: Any) {
        self.calculateTip(sender:tipControl)
    }
}

