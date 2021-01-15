//
//  SecondViewController.swift
//  Data Passing Practice
//
//  Created by kalyan  on 1/15/21.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var secondViewLabel: UILabel!
    var tmpValueforTF: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondViewLabel.text = tmpValueforTF
    }
    
    func valueFromTF(text: String) {
        tmpValueforTF = text
    }
}
