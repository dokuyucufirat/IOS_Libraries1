//
//  ViewController.swift
//  StackView
//
//  Created by Fırat Dokuyucu on 10.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var titleLabel = UILabel()
    var stackView = UIStackView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureStackView()
        configureTitleLabel()
    }
    
    func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints                                                            = false
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive            = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive     = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive  = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive      = true
    }
    
    func configureStackView() {
        view.addSubview(stackView)
        stackView.axis = .vertical //düzenlediğimiz stackview görünümünün yönünü belirler, .vertical sutün oluşturur, .horizontal satır oluşturur, default değer horizontal olduğu için, vertical olarak tanımladık.
        stackView.distribution = .fillEqually //stackViewın nasıl yerleşmesi gerektiğini belirliyoruz. eşit şekilde kaplamasını dolmasını istiyoruz.
        //tam olarak doldurulacağı için aralarına boşluk eklememiz gerekiyor, ayrı ayrı görünüm sağlamamız için
        stackView.spacing = 20 // burada boşluk ekledik.
        
        //constraintsler için func oluşturduk, onu çağıracağız buraya.
        setStackViewConstraints()
        addButtonToStackView()
    }
    
    
    
    func addButtonToStackView() {
        let numberOfButtons = 4
        for i in 1...numberOfButtons {
            let button = SurveyButton() //ayrı bir swift dosyasından survey button oluşturduk, class olarak, ve onu çektik buraya
            button.setTitle("\(i)", for: .normal)
            stackView.addArrangedSubview(button) //stackview subviewının ın bir alt görünümü olmasını sağlıyor button ile
        }
    }
    
    
    
    func setTitleLabelConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints                                                            = false
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive             = true
        titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive     = true
        titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive  = true
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.text = "GeyimBurada.com"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        titleLabel.adjustsFontSizeToFitWidth = true //text labelın sınırlayıcı dikdörtgenini aşarsa,yazı tipi boyutunu metin sığana veya yazı tipini minimum yazı tipi boyutuna ölçekleyene kadar küçültür.
        setTitleLabelConstraints()
        
    }
}

