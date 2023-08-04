//
//  ViewController.swift
//  SOTPTextField
//
//  Created by sahilshaligram on 08/04/2023.
//  Copyright (c) 2023 sahilshaligram. All rights reserved.
//

import UIKit
import SOTPTextField

class ViewController: UIViewController {

    @IBOutlet weak var otpTextField: SOTPTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func verifyOtlBtnAction(_ sender: UIButton) {
        otpTextField.verifyOTP("456789") { isVerified in
            if isVerified {
                sender.setTitle("Success", for: .normal)
                sender.tintColor = .green
            } else {
                sender.setTitle("In valid OTP", for: .normal)
                sender.tintColor = .red
            }
        }
    }
    

}

