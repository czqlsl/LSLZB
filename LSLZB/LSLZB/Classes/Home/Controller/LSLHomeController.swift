//
//  LSLHomeController.swift
//  LSLZB
//
//  Created by loveling on 2017/2/27.
//  Copyright © 2017年 loveling. All rights reserved.
//

import UIKit

class LSLHomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupUI()
      
    }

    
}


extension LSLHomeController{
    
    public func setupUI(){
        setupNav()
        
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
