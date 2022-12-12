//
//  ViewController.swift
//  pickers
//
//  Created by Fırat Dokuyucu on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let picker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.center = view.center
        view.addSubview(picker)
        
        picker.addTarget(self, action: #selector(datePickerPrint(valueDatePicker:)), for: .valueChanged)
    }
    
    @objc func datePickerPrint ( valueDatePicker : UIDatePicker) {
        if valueDatePicker.isEqual(self.picker) {
            print("Doğum Tarihiniz : ", valueDatePicker.date)
        }
    }
}
