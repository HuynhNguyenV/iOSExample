//
//  SecondViewController.swift
//  iOSExample
//
//  Created by Macintosh HD on 10/5/19.
//  Copyright © 2019 Huynh. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {

    var delegate: CanReceive?
    var data = ""
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = data
        // Do any additional setup after loading the view.
    }

    @IBAction func sendDataBack(_ sender: Any) {
        if let name = textField.text {
            delegate?.dataReceived(data: name)
        }
        self.dismiss(animated: true, completion: nil)
    }
}
