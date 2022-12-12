//
//  ViewController.swift
//  tabbar controller
//
//  Created by Fırat Dokuyucu on 12.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        SetupUI()
        
    }
    
    func SetupUI() {
        button.layer.cornerRadius = 10
        button.backgroundColor = .white
        button.setTitle("welcome", for: .normal)
        button.setTitleColor(.black, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector (didTapBarButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }
    
    @objc func didTapBarButton() {
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: FirstViewControler())
        let vc2 = UINavigationController(rootViewController: SecondViewControler())
        let vc3 = UINavigationController(rootViewController: ThirdViewControler())
        let vc4 = UINavigationController(rootViewController: FourthViewControler())
        let vc5 = UINavigationController(rootViewController: FifthViewControler())
        
        vc1.title = "Home"
        vc2.title = "Contact"
        vc3.title = "About"
        vc4.title = "Help"
        vc5.title = "Settings"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        tabBarItem.badgeColor = .red
        tabBarVC.tabBar.tintColor = .red
        tabBarVC.tabBar.backgroundColor = .systemBackground // bu yazilmazsa gorunmez arka plan


        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["house", "bell", "person.circle", "star", "gear"]
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
            items[x].badgeValue = "1"
            
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
    
}

class FirstViewControler: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        title = "Home"
    }
}

class SecondViewControler: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "Contact"
    }
}

class ThirdViewControler: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        title = "About"
    }
}

class FourthViewControler: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = "Help"

    }
}

class FifthViewControler: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Settings"
    }
}

