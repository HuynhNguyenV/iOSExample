//
//  ViewController.swift
//  iOSExample
//
//  Created by Macintosh HD on 10/5/19.
//  Copyright © 2019 Huynh. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    @IBAction func changeColor(_ sender: Any) {
        view.backgroundColor = .blue
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }
       
    
}

