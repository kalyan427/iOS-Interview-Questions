//
//  ViewController.swift
//  Data Passing Practice
//
//  Created by kalyan  on 1/15/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enterText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func buttonFunction(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(identifier: "SecondVC") as! SecondViewController
        secondVC.valueFromTF(text: enterText.text!)
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

