//
//  LSLMainTabbarController.swift
//  LSLZB
//
//  Created by loveling on 2017/2/27.
//  Copyright © 2017年 loveling. All rights reserved.
//

import UIKit

class LSLMainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addAllChildVc()
        
    }
    
    private func addAllChildVc(){
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")
    }
    private func addChildVc(storyName: String){
        //1、通过storyboard获取控制器
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        //2、将childVc作为子控制器
        addChildViewController(childVc)
    }
    

}
