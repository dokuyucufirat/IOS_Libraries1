//
//  ViewController.swift
//  Steppers
//
//  Created by Fırat Dokuyucu on 9.12.2022.
//



import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let stepper = UIStepper()   //frame: CGRect(x: 80, y: 80, width: 0, height: 0)) we use snapkit for this
    let label1 = UILabel()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemTeal
        setupUI()
        
    }
    func setupUI(){
        
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.wraps = true
        stepper.autorepeat = true
       
        view.addSubview(stepper)
        
        stepper.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(160)
            make.top.equalToSuperview().offset(160)  //width height is not necessary
      }
        stepper.addTarget(self, action: #selector(act1), for: .valueChanged)
        
        label1.text = "Value:"
        label1.backgroundColor = .systemTeal
        label1.textColor = .white
        
        view.addSubview(label1)
        label1.snp.makeConstraints { make in
            make.leading.equalTo(stepper)
            make.top.equalTo(stepper).offset(96)
            make.height.equalTo(50)
            make.width.equalTo(100)
        }
        
        
        
    }
    
    @objc func act1(){
        
        label1.text = "Value: \(stepper.value)"
    }


}
