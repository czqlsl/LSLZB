//
//  Extension.swift
//  LSLZB
//
//  Created by loveling on 2017/2/27.
//  Copyright © 2017年 loveling. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    convenience init(imageName: String,highImageName: String = "",size: CGSize = CGSize(width: 0, height: 0)){
        let button = UIButton()
        button.setImage(UIImage.init(named: imageName), for: .normal)
        if highImageName != "" {
            button.setImage(UIImage(named:highImageName), for: .highlighted)
        }
        if size == CGSize(width: 0, height: 0) {
            button.sizeToFit()
        }else{
            button.frame = CGRect(origin:CGPoint(x:0,y:0), size: size)
        }
        self.init(customView: button)
    }
}
