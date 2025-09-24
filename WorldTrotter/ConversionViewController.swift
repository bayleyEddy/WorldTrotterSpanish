//
//  ViewController.swift
//  WorldTrotter
//
//  Created by bayley on 9/18/25.
//

import UIKit

class ConversionViewController: UIViewController {
    @IBOutlet var celsiusLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ConversionViewController loaded its view.")
    }
    
    @IBAction func farhenheitFieldEditingChanged(_ textField: UITextField) {
        celsiusLabel.text = textField.text
    }


}

