//
//  ViewController.swift
//  WorldTrotter
//
//  Created by bayley on 9/18/25.
//

import UIKit

class ConversionViewController: UIViewController {
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ConversionViewController loaded its view.")
    }
    
    @IBAction func farhenheitFieldEditingChanged(_ textField: UITextField) {
        // Set C text field
        if let text = textField.text, !text.isEmpty {
            celsiusLabel.text = text
        } else {
            celsiusLabel.text = "???"
        }
    }

    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer){
        textField.resignFirstResponder()
    }

}

