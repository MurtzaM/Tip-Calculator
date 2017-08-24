//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Murtza Manzur on 8/23/17.
//  Copyright © 2017 MM. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var tipPercentageController: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //
        tipPercentageController.selectedSegmentIndex = getDefaultTip()
    }
    
    func setDefaultTip(index: Int) {
        let defaults = UserDefaults.standard
        defaults.set(index, forKey: "defaultTip")
        defaults.synchronize()
    }
    
    func getDefaultTip() -> Int {
        let defaults = UserDefaults.standard
        return defaults.integer(forKey: "defaultTip")
    }
    
    @IBAction func tipChanged(_ sender: Any) {
    let index = Int(tipPercentageController.selectedSegmentIndex)
        self.setDefaultTip(index: index)
    }
}
