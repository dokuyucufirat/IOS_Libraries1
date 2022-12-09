//
//  ViewController.swift
//  Sliders
//
//  Created by Fırat Dokuyucu on 9.12.2022.
//



import UIKit
import SnapKit

class ViewController: UIViewController {
    let sliderOne = UISlider()
    let label1 = UILabel()
    let text1 = UITextField()
    

    override func viewDidLoad() {
        super.viewDidLoad()
     setupUI()
    }

    
    func setupUI(){
        
        
        
       
        
        sliderOne.minimumValue = 18
        sliderOne.maximumValue = 70
        sliderOne.value = 35
        sliderOne.isContinuous = true
        sliderOne.tintColor = UIColor.green
        
        view.addSubview(sliderOne)
        sliderOne.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(80)
            make.top.equalToSuperview().offset(80)
            make.height.equalTo(30)
            make.width.equalTo(200)  //important
        }
        sliderOne.addTarget(self, action: #selector(changed), for: .valueChanged)
        
        
        label1.textColor = .red
        view.addSubview(label1)
        label1.text = "Value:" + String(format:" %.f", sliderOne.value)
        label1.snp.makeConstraints { make in
            make.leading.equalTo(sliderOne)
            make.top.equalTo(sliderOne).offset(80)
        }
        text1.textColor = .green
        text1.backgroundColor = .systemGray
        text1.addTarget(self, action: #selector(textchange), for: .editingChanged)
        view.addSubview(text1)
        text1.snp.makeConstraints { make in
            make.top.equalTo(sliderOne).offset(160)
            make.leading.equalTo(sliderOne)
            make.width.height.equalTo(50)
            
        }

    }
    
    @objc func changed(_sender: Any){
        
        
        //sliderOne.value = Float(text1.text!) ?? 0
        label1.text = "Value:" + String(format:" %.f", sliderOne.value)
    }
    
    @objc func age(_sender: Any){
        
        
        sliderOne.value = Float(text1.text!) ?? 0
        
    }
    
    @objc func textchange() {
        if let stringValue = text1.text{
            if let intValue = Int(stringValue){
                sliderOne.setValue(Float(intValue), animated: true)
                label1.text = "Value:" + String(format:" %.f", sliderOne.value)
            }
        }

    }

}
