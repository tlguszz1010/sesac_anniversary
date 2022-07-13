//
//  ViewController.swift
//  sesac_anniversary
//
//  Created by 박시현 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.preferredDatePickerStyle = .inline
        // Do any additional setup after loading the view.
    }

    @IBAction func datePickerClicked(_ sender: UIDatePicker) {
    }
    
    
}

