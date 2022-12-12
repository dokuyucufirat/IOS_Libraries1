//
//  ViewController.swift
//  scrollView
//
//  Created by Fırat Dokuyucu on 12.12.2022.
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
    }


    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        scrollView.backgroundColor = .systemTeal
        view.addSubview(scrollView)
        
        let toplabel = UILabel(frame: CGRect(x: 10, y: 0, width: 300, height: 150))
        toplabel.backgroundColor = .systemYellow
        toplabel.layer.cornerRadius = 10
        toplabel.layer.masksToBounds = true
        toplabel.textAlignment = .center
        toplabel.text = "Label1"
        toplabel.textColor = .white
        scrollView.addSubview(toplabel) //add for scroll not view
        
        
        let toplabel2 = UILabel(frame: CGRect(x: 10, y: 165, width: 300, height: 150))
        toplabel2.backgroundColor = .systemYellow
        toplabel2.layer.cornerRadius = 10
        toplabel2.layer.masksToBounds = true
        toplabel2.textAlignment = .center
        toplabel2.text = "Label2"
        toplabel2.textColor = .white
        scrollView.addSubview(toplabel2) //add for scroll not view
        
        
        let toplabel3 = UILabel(frame: CGRect(x: 10, y: 330, width: 300, height: 150))
        toplabel3.backgroundColor = .systemYellow
        toplabel3.layer.cornerRadius = 10
        toplabel3.layer.masksToBounds = true
        toplabel3.textAlignment = .center
        toplabel3.text = "Label3"
        toplabel3.textColor = .white
        scrollView.addSubview(toplabel3) //add for scroll not view
        
        let toplabel4 = UILabel(frame: CGRect(x: 10, y: 495, width: 300, height: 150))
        toplabel4.backgroundColor = .systemYellow
        toplabel4.layer.cornerRadius = 10
        toplabel4.layer.masksToBounds = true
        toplabel4.textAlignment = .center
        toplabel4.text = "Label4"
        toplabel4.textColor = .white
        scrollView.addSubview(toplabel4) //add for scroll not view
        
        
        
        
        
        
        
        //other page
        let toplabel5 = UILabel(frame: CGRect(x:10, y: view.frame.height+100, width: 300, height: 150))
        toplabel5.backgroundColor = .systemYellow
        toplabel5.layer.cornerRadius = 10
        toplabel5.layer.masksToBounds = true
        toplabel5.textAlignment = .center
        toplabel5.text = "Label5"
        toplabel5.textColor = .white
        scrollView.addSubview(toplabel5) //add for scroll not view
        
        
        let toplabel6 = UILabel(frame: CGRect(x: 10, y: view.frame.height+265, width: 300, height: 150))
        toplabel6.backgroundColor = .systemYellow
        toplabel6.layer.cornerRadius = 10
        toplabel6.layer.masksToBounds = true
        toplabel6.textAlignment = .center
        toplabel6.text = "Label6"
        toplabel6.textColor = .white
        scrollView.addSubview(toplabel6) //add for scroll not view
        
        
        let toplabel7 = UILabel(frame: CGRect(x: 10, y: view.frame.height+430, width: 300, height: 150))
        toplabel7.backgroundColor = .systemYellow
        toplabel7.layer.cornerRadius = 10
        toplabel7.layer.masksToBounds = true
        toplabel7.textAlignment = .center
        toplabel7.text = "Label7"
        toplabel7.textColor = .white
        scrollView.addSubview(toplabel7) //add for scroll not view
        
        let toplabel8 = UILabel(frame: CGRect(x: 10, y: view.frame.height+595, width: 300, height: 150))
        toplabel8.backgroundColor = .systemYellow
        toplabel8.layer.cornerRadius = 10
        toplabel8.layer.masksToBounds = true
        toplabel8.textAlignment = .center
        toplabel8.text = "Label8"
        toplabel8.textColor = .white
        scrollView.addSubview(toplabel8) //add for scroll not view
        
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height*2)
        
    }
}
