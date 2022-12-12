//
//  ViewController.swift
//  lottie
//
//  Created by Fırat Dokuyucu on 12.12.2022.
//


import UIKit
import SnapKit
import Lottie


class ViewController: UIViewController {
    
    let animationView = LottieAnimationView()
    var timer: Timer?
    var counter = 7
    let label1 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPurple
        
        setupAnimation()
        
        view.addSubview(label1)
        label1.textColor = .systemTeal
        label1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(560)
            make.leading.equalTo(160)
        }
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        let label = UILabel()
        label.text = "Burada"
        //label.text = ("\(counter) saniye bekleyiniz")
        label.font = UIFont(name: "Poppins-Bold", size: 100)
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(300)
            make.leading.equalToSuperview().offset(170)
        }
        
        
        
    }
    private func setupAnimation(){
        animationView.animation = .named("loading")
        animationView.frame = CGRect(x: 0, y: 0, width: 500, height: 250)
        animationView.center = view.center
        animationView.backgroundColor = .systemPurple
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        
    }
    
    @objc func updateCounter(){
        if counter > 0 {
            print("\(counter) saniye bekleyiniz")
            counter -= 1
            label1.text = "\(counter) saniye bekleyiniz"
            
        }
    }
    
}
