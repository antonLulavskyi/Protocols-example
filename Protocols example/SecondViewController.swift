//
//  SecondViewController.swift
//  Protocols example
//
//  Created by Test on 10/10/2019.
//  Copyright © 2019 Peanch. All rights reserved.
//

import UIKit

protocol CanRecive {
    func dataRecived(data: String)
}

class SecondViewController: UIViewController {
    
    var data = ""
    var delegate: CanRecive?
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textFieldData: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        textLabel.text = data
    }
    
    @IBAction func dissmisButton(_ sender: UIButton) {
        delegate?.dataRecived(data: textFieldData.text!)
        dismiss(animated: true, completion: nil)
    }
    
  

}
