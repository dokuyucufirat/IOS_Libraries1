//
//  ViewController.swift
//  NavigationBar
//
//  Created by Fırat Dokuyucu on 12.12.2022.
//


import UIKit
import SnapKit

class ViewController: UIViewController {
    let navBar = UINavigationBar()
    let navItem = UINavigationItem(title: "Home")
    let doneItem = UIBarButtonItem(title: "Done", style: .done, target: nil, action: #selector(navFunc))
    let backItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: #selector(navFunc))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        
     setupUI()
    }
    
    func setupUI(){
        self.view.addSubview(navBar)
        navBar.snp.makeConstraints { make in
            make.width.equalTo(view.frame.size.width)
            make.height.equalTo(40)
            make.top.equalToSuperview().offset(80)
            
        }
        navItem.rightBarButtonItem = doneItem
        navItem.leftBarButtonItem = backItem
        navBar.setItems([navItem], animated: true)
 }
    
    
    @objc func navFunc(){
        
        
        //how to connect nother page ?
        
    }
    


}

