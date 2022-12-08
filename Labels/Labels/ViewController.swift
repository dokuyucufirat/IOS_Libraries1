//
//  ViewController.swift
//  Labels
//
//  Created by Fırat Dokuyucu on 8.12.2022.
//
import UIKit
import SnapKit
//Snapkit is using for layout user interface and programatically programing.//
//autolayout : we dont need set constrains for autolayout//

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemPurple
        setupUI()
    } //override
    
    func setupUI(){
        lazy var ortaUst = UILabel()
        ortaUst.font = UIFont(name: "Helvetica", size: 22)
        ortaUst.text = "Orta-Ust"
        ortaUst.textColor = .white
        view.addSubview(ortaUst)// add subview
        ortaUst.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.centerX.equalToSuperview()
         
            
        } //make
        
        
        lazy var solAlt = UILabel()
        solAlt.font = UIFont(name: "Helvetica", size: 22)
        solAlt.text = "Sol- alt"
        solAlt.textColor = .red
        view.addSubview(solAlt)
            solAlt.snp.makeConstraints { make in
                make.bottom.equalToSuperview().offset(-80)
                make.leading.equalToSuperview().offset(8)
                
            }//make
        
        
        lazy var merkez = UILabel()
        merkez.font = UIFont(name: "Helvetica", size: 22)
        merkez.text = "Merkez"
        merkez.textColor = .blue
        view.addSubview(merkez)
            merkez.snp.makeConstraints { make in
                make.center.equalToSuperview()
                
            }//make
        lazy var yuksekGenis = UILabel()
        yuksekGenis.font = UIFont(name: "Helvetica", size: 22)
        yuksekGenis.text = "Yuksek Genis"
        yuksekGenis.textColor = .green
        view.addSubview(yuksekGenis)
            yuksekGenis.snp.makeConstraints { make in
                make.width.equalTo(view.snp.width).multipliedBy(0.25)
                make.height.equalTo(view.snp.height).multipliedBy(0.33)
                make.leading.equalTo(solAlt.snp.trailing).offset(40)
                make.centerY.equalTo(solAlt.snp.centerY)

                
            }//make
        
        
    }//func


}//class
