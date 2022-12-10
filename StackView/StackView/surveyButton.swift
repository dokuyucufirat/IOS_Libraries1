//
//  surveyButton.swift
//  StackView
//
//  Created by Fırat Dokuyucu on 10.12.2022.
//

import UIKit

class SurveyButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init(coder adDecoder : NSCoder) {
        super.init(coder: adDecoder)!
        setupButton()
    }
    
    func setupButton() {
        setTitleColor(.white, for: .normal)
        backgroundColor = .red
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 20)
        layer.cornerRadius = 10
    }
}
