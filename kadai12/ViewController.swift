//
//  ViewController.swift
//  kadai12
//
//  Created by 坂本龍哉 on 2020/12/30.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var zeinukiTextField: UITextField!
    @IBOutlet private var zeirituTextField: UITextField!
    @IBOutlet private var kekkaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let zei = UserDefaults.standard.string(forKey: "zei") {
            self.zeirituTextField.text = zei
        }
    }
    
    @IBAction private func culculateButton(_ sender: Any) {
        let zeinuki = Double(zeinukiTextField.text!) ?? 0
        let zeiritu = 1 + (Double(zeirituTextField.text!) ?? 0) / 100
        let kekka = zeinuki * zeiritu
        kekkaLabel.text = "\(Int(kekka))円"
        
        UserDefaults.standard.setValue(self.zeirituTextField.text, forKey: "zei")
    }
}

