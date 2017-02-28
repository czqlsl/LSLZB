//
//  LSLHomeController.swift
//  LSLZB
//
//  Created by loveling on 2017/2/27.
//  Copyright © 2017年 loveling. All rights reserved.
//

import UIKit

private let kTitleViewH :CGFloat = 40
class LSLHomeController: UIViewController {

    fileprivate lazy var pageTitleView : LSLPageTitleView = {
        let titleFrame =  CGRect(x: 0, y: kStatusBarH + kNavigationBarH, width: kScreenW, height: kTitleViewH)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        
        let titleView = LSLPageTitleView(frame: titleFrame, titles:titles)
        //titleView.backgroundColor = UIColor(rand: true)
        return titleView
        
    }()
    
    fileprivate lazy var pageContentView :LSLPageContentView = {
        let contentH = kScreenH - kStatusBarH - kNavigationBarH - kTitleViewH
        let contentFrame = CGRect(x: 0, y:kStatusBarH + kNavigationBarH + kTitleViewH , width: kScreenW, height: contentH)
        
        var childVs = [UIViewController]()
        for _ in 0..<4{
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor(rand:true)
            childVs.append(vc)
        }
        
        let contentView = LSLPageContentView(frame: contentFrame, childVcs: childVs, parentVc: self)
        return contentView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
       
    }

    
}


extension LSLHomeController{
    
    fileprivate func setupUI(){
        automaticallyAdjustsScrollViewInsets = false
        setupNav()
        view.addSubview(pageTitleView)
        view.addSubview(pageContentView)
    }
    private func setupNav(){
        let btn = UIButton()
        btn.setImage(UIImage.init(named: "logo"), for: .normal)
        btn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(imageName: "logo")
        let size = CGSize(width: 40, height: 40)
        let historyItem = UIBarButtonItem.init(imageName: "Image_my_history_click", highImageName: "Image_my_history", size: size)
        let scanItem = UIBarButtonItem.init(imageName: "Image_scan_click", highImageName: "Image_scan", size: size)
        let searchItem = UIBarButtonItem.init(imageName: "btn_search_clicked", highImageName: "btn_search", size: size)
        navigationItem.rightBarButtonItems = [searchItem,scanItem,historyItem]
    
    }
}
