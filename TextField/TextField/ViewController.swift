//
//  ViewController.swift
//  TextField
//
//  Created by Fırat Dokuyucu on 9.12.2022.
//



import UIKit
import SnapKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    lazy var textField1 = UITextField()
    lazy var textField2 = UITextField()
    lazy var textField3 = UITextField()
    lazy var buttonSend = UIButton()
    lazy var message = UILabel()
    lazy var scrollMessage = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemPurple
        setupUI()
    }

    
    func setupUI(){
        //textField1.frame = CGRect(x: 20, y: 300, width: 300, height: 50)
        textField1.placeholder = "Enter your phone Here"
        textField1.font = UIFont.systemFont(ofSize: 10)
        textField1.borderStyle = UITextField.BorderStyle.roundedRect
        textField1.keyboardType = UIKeyboardType.default
        textField1.returnKeyType = UIReturnKeyType.done
        textField1.clearButtonMode = UITextField.ViewMode.whileEditing
        textField1.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        
        //delegate
        textField1.delegate = self
        view.addSubview(textField1)
        textField1.snp_makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(160)
            make.leading.equalToSuperview().offset(32)
            make.top.equalToSuperview().offset(64)
        }
        
        textField2.placeholder = "Enter your mail Here"
        textField2.font = UIFont.systemFont(ofSize: 10)
        textField2.borderStyle = UITextField.BorderStyle.roundedRect
        textField2.keyboardType = UIKeyboardType.default
        textField2.returnKeyType = UIReturnKeyType.done
        textField2.clearButtonMode = UITextField.ViewMode.whileEditing
        textField2.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        textField2.delegate = self
        view.addSubview(textField2)
        textField2.snp_makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(160)
            make.leading.equalTo(textField1)
            make.top.equalTo(textField1).offset(64)
        }
        
        
        textField3.placeholder = "Enter your messgae Here"
        textField3.font = UIFont.systemFont(ofSize: 10)
        textField3.borderStyle = UITextField.BorderStyle.roundedRect
        textField3.keyboardType = UIKeyboardType.default
        textField3.returnKeyType = UIReturnKeyType.done
        textField3.clearButtonMode = UITextField.ViewMode.whileEditing
        textField3.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        textField3.delegate = self
        view.addSubview(textField3)
        textField3.snp_makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(160)
            make.leading.equalTo(textField1)
            make.top.equalTo(textField1).offset(128)
        }
        
        
        
        
        buttonSend.backgroundColor = .systemMint
        buttonSend.setTitle("Gonder", for: .normal)
        buttonSend.setTitleColor(.white, for: .normal)
        buttonSend.layer.cornerRadius = 10
        view.addSubview(buttonSend)
        buttonSend.addTarget(self, action: #selector(sendButton), for: .touchUpInside)
        buttonSend.snp.makeConstraints { make in
            make.height.equalTo(textField1.snp.height)
            make.width.equalTo(80)
            make.top.equalTo(textField1.snp.bottom).offset(160)
            make.leading.equalTo(textField1.snp.trailing).offset(48)
        }
        
        
        message.backgroundColor = .white
        message.layer.opacity = 0.8
        message.layer.cornerRadius = 30
        message.layer.masksToBounds = true //for rounded corners
        message.textAlignment = .center
       // message.lineBreakMode = .byWordWrapping
        message.numberOfLines = 0
        
        view.addSubview(message)
        message.snp.makeConstraints {make in
            make.height.equalTo(160)
            make.width.equalTo(320)
            make.leading.equalTo(textField1.snp.leading)
            make.top.equalToSuperview().offset(320)
        }
        
        
        scrollMessage.text = ("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed condimentum lectus ac vulputate gravida. Sed dapibus ligula ac lacus feugiat porttitor. Donec ex nunc, rutrum eget gravida at, aliquet sed turpis. Nullam lobortis purus a enim facilisis eleifend. Vestibulum venenatis nibh eleifend tellus mollis mollis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In lobortis nibh quis placerat semper. Nulla efficitur a erat feugiat efficitur. Sed sed varius enim.Quisque sagittis lobortis iaculis. Sed at aliquam ante. Sed id laoreet risus, id consequat sapien. Nunc ac urna iaculis, faucibus justo ac, euismod quam. Sed ligula enim, pulvinar molestie odio nec, accumsan semper libero. Vivamus in ipsum quis risus iaculis efficitur. Aenean vel volutpat lorem. Curabitur volutpat neque at lacus dictum maximus. Mauris imperdiet aliquet lectus eu ullamcorper. Sed semper nunc mi, sed congue mauris mattis nec. Nulla a ultrices tortor. Maecenas accumsan eget lectus id blandit. Phasellus in placerat ipsum, sodales ultricies purus. Nunc sed leo quis massa iaculis tempus sit amet eget ante. Donec placerat facilisis ipsum, vel dictum nisl viverra vitae. Praesent dapibus nisl a ligula interdum, vitae tincidunt est consectetur. Curabitur interdum, libero a dictum sagittis, ex nunc posuere est, nec pellentesque lorem justo at arcu. Nunc non posuere leo, vel ornare mi. Morbi vehicula lectus massa, pulvinar blandit quam fermentum et. Integer tristique quam at euismod feugiat. Sed at sagittis leo. Suspendisse tristique dapibus bibendum. Nulla sagittis eros venenatis eros bibendum, sed vehicula eros ornare. Donec blandit urna ante, eget volutpat nisl suscipit ut. Curabitur vel tortor nec magna viverra maximus tristique sit amet nisi. Etiam vel ultrices nulla.")
        scrollMessage.layer.opacity = 0.8
        scrollMessage.layer.cornerRadius = 10
        scrollMessage.isScrollEnabled = true
        scrollMessage.textAlignment = .center
        view.addSubview(scrollMessage)
        scrollMessage.snp.makeConstraints { make in
            make.height.equalTo(160)
            make.width.equalTo(320)
            make.leading.equalTo(textField1.snp.leading)
            make.top.equalToSuperview().offset(520)
            
        }
        
        
        
        
    
    
    }
    
    @objc func sendButton(){
        
        
        print("Clicked")
        
        //message.text = ("Your Phone:\(textField1.text)")
        // bu sekilde optional gelir cunku textfield bos da olabilir . if tanimlanmali veya text sonuna unlem
        
        
       // if let text :String = textField1.text{
          //  message.text = ("Your phone:\(text)")
        //}
        
        message.text = ("Your Number:\(textField1.text!)\n" + "Your Email:\(textField2.text!)\n" + "Your Message:\(textField3.text!)")
        
    }
    
    
    //method for hide keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()

        return true
    }
    
    
    

}
