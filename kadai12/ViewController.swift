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
        
        zeirituTextField.text = String(UserDefaults.standard.double(forKey: UserDefaultsKey.tax))
    }
    
    @IBAction private func culculateButton(_ sender: Any) {
        let zeinuki = Double(zeinukiTextField.text!) ?? 0
        let zeiritu100 = Double(zeirituTextField.text!) ?? 0
        let zeiritu = 1 + zeiritu100 / 100
        let kekka = zeinuki * zeiritu
        kekkaLabel.text = "\(Int(kekka))円"
        
        UserDefaults.standard.set(zeiritu100, forKey: UserDefaultsKey.tax)
    }
}
