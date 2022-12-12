//
//  ViewController.swift
//  activityIndicator
//
//  Created by Fırat Dokuyucu on 12.12.2022.
//


import UIKit
import SnapKit

class ViewController: UIViewController {
    let activityInd = UIActivityIndicatorView(style: .medium)
    let activityButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        setupUI()
    }
    func setupUI(){
        activityButton.setTitleColor(.black, for: .normal)
        activityButton.setTitle("Start", for: .normal)
        activityButton.backgroundColor = .white
        activityButton.layer.cornerRadius = 10
        view.addSubview(activityButton)
        activityButton.addTarget(self, action: #selector(start), for: .touchUpInside) //obj to activityButton1
        activityButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(160)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(160)
        }
    }
    
    
    //
    
    @objc func start(){
        let activityInd = UIActivityIndicatorView()
        
        activityInd.backgroundColor = .red
        activityInd.color = .blue
        activityInd.hidesWhenStopped = true
        activityInd.center = view.center
        
        
        activityInd.startAnimating()
        view.addSubview(activityInd)
        
        
        
    }
    
}
