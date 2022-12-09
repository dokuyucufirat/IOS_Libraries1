//
//  ViewController.swift
//  switches
//
//  Created by Fırat Dokuyucu on 9.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let switchOne = UISwitch()
    let switchTwo = UISwitch()
    let labelSwitch = UILabel()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
    }
    func setupUI(){
        
        
        //switchONE
        switchOne.setOn(false, animated: true)
        self.view.addSubview(switchOne)
        switchOne.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(80)
            make.top.equalToSuperview().offset(80)
        }
        switchOne.addTarget(self, action: #selector(State), for: .valueChanged)
        
        
        //switchTWO
        switchTwo.setOn(false, animated: true)
        self.view.addSubview(switchTwo)
        switchTwo.snp.makeConstraints { make in
            make.leading.equalTo(switchOne.snp.leading)
            make.top.equalTo(switchOne.snp.top).offset(64)
        }
        switchTwo.addTarget(self, action: #selector(bgChange), for: .valueChanged)
        
        
        
        //LABEL
        
        labelSwitch.text = "OFF"
        labelSwitch.textColor = .red
        self.view.addSubview(labelSwitch)
        labelSwitch.snp.makeConstraints { make in
            make.leading.equalTo(switchOne.snp.leading).offset(80)
            make.top.equalTo(switchOne)
        }
        
    }
    
    @objc func State(){
        
        labelSwitch.text = switchOne.isOn ? "ON" : "OFF"
            
        }
    
    
    @objc func bgChange(){
        
        view.backgroundColor = switchTwo.isOn ? .green : .white
        //switchTwo.backgroundColor = switchTwo.isOn ? .white : .black
        
        
        
        
    }
    
    
    
        
    }
