//
//  ViewController.swift
//  ProgressBar
//
//  Created by Fırat Dokuyucu on 12.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let progressBar = UIProgressView(progressViewStyle: .default)
    let button1 = UIButton()
    let labelButton = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       setupUI()
    }

    func setupUI(){
        
        view.addSubview(button1)
        button1.layer.cornerRadius = 20
        labelButton.text = "Click Me"
        button1.setTitle(labelButton.text, for: .normal)
        button1.backgroundColor = .systemPink
        button1.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(160)
            make.top.equalToSuperview().offset(160)
            make.leading.equalTo(160)
        }
        
        button1.addTarget(self, action: #selector(click1), for: .touchUpInside)
 
        view.addSubview(progressBar)
        progressBar.progress = 0  //set zero
        progressBar.trackTintColor = .black
        progressBar.tintColor = .blue
        progressBar.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(240)
            make.leading.equalTo(160)
            make.height.equalTo(40)
            make.width.equalTo(160)
        }
    }
    
    @objc func click1(){
        progressBar.progress += 0.1 //progress bar 0-1 oldugundan 0.1 ilerletip 10 ile carpiyoruz.
        labelButton.text = String (Int(progressBar.progress*10))
        button1.setTitle(labelButton.text, for: .normal)
        if progressBar.progress == 1 {
            progressBar.setProgress(0, animated: false)
            labelButton.text = "Again"
            button1.setTitle(labelButton.text, for: .normal)
        }
    }
}
