//
//  ImageViewController.swift
//  Conversion
//
//  Created by 미미밍 on 2021/11/23.
//

import UIKit

class ImageViewController: UIViewController, UIScrollViewDelegate {
    var images = [#imageLiteral(resourceName: "pic1"),#imageLiteral(resourceName: "pic2"),#imageLiteral(resourceName: "pic3")]
    var imageViews = [UIImageView]()
    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollview.delegate = self
        addContentScrollView()
        setPageControl()
    }
    private func addContentScrollView() {
        for i in 0..<images.count {
            let imageView = UIImageView()
            let xPos = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0, width: scrollview.bounds.width, height: scrollview.bounds.height)
            imageView.image = images[i]
            scrollview.addSubview(imageView)
            scrollview.contentSize.width = imageView.frame.width * CGFloat(i + 1)
        }
     }
    
    private func setPageControl() {
        pageControl.numberOfPages = images.count
    }
    
    private func setPageControlSelectedPage(currentPage:Int) {
        pageControl.currentPage = currentPage
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let value = scrollview.contentOffset.x/scrollview.frame.size.width
        setPageControlSelectedPage(currentPage: Int(round(value)))
    }

}
