//
//  ViewController.swift
//  SegmentedController
//
//  Created by Fırat Dokuyucu on 12.12.2022.
//

import UIKit
import SnapKit

let segmentC = UISegmentedControl(items: items)
let items = ["Light", "Dark" , "Custom"]

class ViewController: UIViewController {
 
   // loadView is the method that actually sets up your view (sets up all the outlets, including self. view). viewDidLoad you can figure out by its name. It's a delegate method called after the view has been loaded (all the outlets have been set) that just notifies the controller that it can now start using the outlets.

    override func loadView() {
        super.loadView()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
  
        let frame = UIScreen.main.bounds
        //segmentC.frame = CGRectMake(frame.minX + 10, frame.minY + 50, frame.width - 20, frame.height*0.1)
        segmentC.selectedSegmentIndex = 0
        segmentC.layer.cornerRadius = 5.0  // Don't let background bleed
        segmentC.backgroundColor = UIColor.systemGray
        segmentC.tintColor = UIColor.white
        segmentC.addTarget(self, action: #selector(changeColor), for: .valueChanged)
        
        self.view.addSubview(segmentC)
      segmentC.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(320)
          make.leading.equalToSuperview().offset(80)
          make.trailing.equalToSuperview().offset(-80)
          make.top.equalToSuperview().offset(80)
        }
    }
   
    @objc func changeColor(sender: UISegmentedControl) {
        
         switch sender.selectedSegmentIndex {
         case 1:
             self.view.backgroundColor = UIColor.black
           
         case 2:
             self.view.backgroundColor = UIColor.systemMint
          
         default:
             self.view.backgroundColor = UIColor.white
         }
     }
}
