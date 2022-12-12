//
//  ViewController.swift
//  searchBar
//
//  Created by Fırat Dokuyucu on 12.12.2022.
//


import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
 
    let searchBar:UISearchBar = UISearchBar(frame: CGRect(x: 40, y: 80, width: 300, height: 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.searchBarStyle = UISearchBar.Style.prominent
        searchBar.placeholder = " Search..."
        //searchBar.sizeToFit()
        searchBar.isTranslucent = false
        searchBar.backgroundImage = UIImage()
        searchBar.delegate = self
        view.addSubview(searchBar)
    }
}
