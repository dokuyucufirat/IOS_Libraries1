//
//  ViewController.swift
//  alertAction
//
//  Created by Fırat Dokuyucu on 12.12.2022.
//



import UIKit
import SnapKit

class ViewController: UIViewController  {
    //ALERT
    let alertController = UIAlertController(title: "Alert", message: "You Sure?", preferredStyle: .alert)
    let buttonAlert = UIButton()
    
    //ACTION SHEET
    let buttonAction = UIButton()
    let actionSheetController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
    let firstAction: UIAlertAction = UIAlertAction(title: "First Action", style: .default)
    let secondAction: UIAlertAction = UIAlertAction(title: "Second Action", style: .default)
    let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel)
    
    //ALERT WITH TEXTFIELD
    let buttonLogin = UIButton()
    
    override func viewDidAppear(_ animated: Bool) {   /// change viewdid load to view did appear
        super.viewDidAppear(animated)
        setupUI()
    }
    
    func setupUI(){
        
        //ALERT BUTTON
        buttonAlert.layer.cornerRadius = 10
        buttonAlert.backgroundColor = .red
        buttonAlert.setTitle("ALERT!", for: .normal)
        buttonAlert.setTitleColor(.white, for: .normal)
        view.addSubview(buttonAlert)
        buttonAlert.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(80)
            make.center.equalToSuperview()
        }
        buttonAlert.addTarget(self, action: #selector(alert1), for: .touchUpInside)
        
        //ACTION SHEET BUTTON
        buttonAction.layer.cornerRadius = 10
        buttonAction.backgroundColor = .green
        buttonAction.setTitle("ACTION SHEET", for: .normal)
        buttonAction.setTitleColor(.white, for: .normal)
        view.addSubview(buttonAction)
        buttonAction.addTarget(self, action: #selector(action1), for: .touchUpInside)
        buttonAction.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(160)
            make.leading.equalTo(buttonAlert)
            make.top.equalTo(buttonAlert).offset(80)
        }
        
        // ALERT TEXTFIELD(LOGIN) BUTTON
        
        buttonLogin.layer.cornerRadius = 10
        buttonLogin.backgroundColor = .blue
        buttonLogin.setTitle("SUBMIT ANSWER", for: .normal)
        buttonLogin.setTitleColor(.white, for: .normal)
        view.addSubview(buttonLogin)
        buttonLogin.addTarget(self, action: #selector(action2), for: .touchUpInside)
        buttonLogin.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(160)
            make.leading.equalTo(buttonAlert)
            make.top.equalTo(buttonAlert).offset(160)
        }
    }
    
    //SIMPLE ALLERT
    @objc func alert1(){
        alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil)) // style: .cancel butona iki kere tiklandiginda hata verir.
        present(alertController, animated: true, completion: nil)
    }
    
    //SIMPLE ACTION SHEET
    
    @objc func action1(){
        actionSheetController.addAction(firstAction)
        actionSheetController.addAction(secondAction)
        actionSheetController.addAction(cancelAction)
        
        present(actionSheetController, animated: true)// {print("option menu presented")}
    }
    
    // ALERT WITH TEXT (LOGIN)
    
    @objc func action2(){
        //yukarida yerine burda tanimlama
        let ac = UIAlertController(title: "Enter answer", message: nil, preferredStyle: .alert)
        ac.addTextField()
        
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
            let answer = ac.textFields![0]
        }
        ac.addAction(submitAction)
        present(ac, animated: true)
    }
}
