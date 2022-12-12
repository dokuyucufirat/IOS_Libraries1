//
//  ViewController.swift
//  pickers
//
//  Created by Fırat Dokuyucu on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let picker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.center = view.center
        picker.dataSource = self
        picker.delegate = self
        view.addSubview(picker)
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let result = "row = \(row)"
        return result
    }
}

