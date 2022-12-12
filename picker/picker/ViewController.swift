//
//  ViewController.swift
//  picker
//
//  Created by Fırat Dokuyucu on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var txtDatePicker: UITextField = {
        let txt = UITextField()
         txt.translatesAutoresizingMaskIntoConstraints = false
         txt.placeholder = "Tarih Seç"
         txt.font = UIFont.systemFont(ofSize: 15)
         txt.borderStyle = .roundedRect
         //Date Picker View;
         let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
         txt.inputView = datePicker
         datePicker.addTarget(self, action: #selector(self.valuechanged), for: .valueChanged)
         
         return txt
    }()
    
    @objc func valuechanged(sender: UIDatePicker) {
        let dateFormat = DateFormatter()
        dateFormat.dateStyle = .long
        dateFormat.timeStyle = .none
        self.txtDatePicker.text = dateFormat.string(from: sender.date)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.txtDatePicker)
        
        self.txtDatePicker.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive = true
        self.txtDatePicker.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -60).isActive = true
        self.txtDatePicker.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive  = true
        self.txtDatePicker.heightAnchor.constraint(equalToConstant: 50).isActive = true
     }


}

