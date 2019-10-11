//
//  ViewController.swift
//  Protocols example
//
//  Created by Test on 10/10/2019.
//  Copyright © 2019 Peanch. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanRecive {
   
    

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textfieldData: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func transferDataButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "showSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondScreen" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textfieldData.text!
            secondVC.delegate = self
        }
    }
    
    func dataRecived(data: String) {
        textLabel.text = data
       }
    
}

