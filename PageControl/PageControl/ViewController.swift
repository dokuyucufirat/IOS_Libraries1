//
//  ViewController.swift
//  PageControl
//
//  Created by Fırat Dokuyucu on 9.12.2022.
//


//
//  ViewController.swift
//  karalama
//
//  Created by Fırat Dokuyucu on 8.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    
    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 5
        pageControl.backgroundColor = .purple
        return pageControl
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageControl.addTarget(self,
                              action: #selector(pageControlDidChange),
                              for: .valueChanged)
        scrollView.backgroundColor = .systemRed
        view.addSubview(pageControl)
        view.addSubview(scrollView)
        scrollView.delegate = self //yukarıdaki sayfalar hareket ettirilirken, aşaıdaki page controle yansıması için önce delegate işlemi yapıyoruz, devamında aşağıda bir fonksiyon yazmış olacağız. (extension kısmı)
    }
    
    @objc private func pageControlDidChange(_ sender: UIPageControl) {
        let current = sender.currentPage
        //scrollView.setContentOffset(CGPoint(x: CGFloat(current)*view.frame.size.width, y: 0), animated: true)
        scrollView.setContentOffset(CGPoint(x: CGFloat(current)*view.frame.size.width, y: 0), animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pageControl.frame = CGRect(x: 10, y: view.frame.size.height-100, width: view.frame.size.width-20, height: 70 )
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height-100)
        if scrollView.subviews.count == 2 {
            configureScrollView()
        }
    }
    
    private func configureScrollView() {
        
        /* scrollView.contentSize = CGSize(width: view.frame.size.width*5, height: view.frame.size.height) */
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height)
        
        scrollView.isPagingEnabled = true
        let colors: [UIColor] = [
            .systemRed,
            .systemGray,
            .systemBlue,
            .systemYellow,
            .systemBrown
        ]
        for x in 0..<5 {
           
            let page = UIView(frame: CGRect(x: CGFloat(x)*view.frame.size.width, y: 0, width: view.frame.size.width, height: scrollView.frame.size.height))
            page.backgroundColor = colors[x]
            scrollView.addSubview(page)
        }
        
    }


}

extension ViewController : UIScrollViewDelegate { //üst sayfanın alt scrollıu takip etmesi için delegate etmiştik, UIScrollView delegate yeni bir class olarak tanımlanıyor ve bu classla bağlamayı yaoıyoruz.
    
    func scrollViewDidScroll(_ scrollView : UIScrollView) {
        pageControl.currentPage = Int(floorf(Float(scrollView.contentOffset.x) / Float(scrollView.frame.size.width)))
    }
    
    
}
