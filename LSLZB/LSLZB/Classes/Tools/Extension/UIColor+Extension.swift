//
//  UIColor+Extension.swift
//  LSLZB
//
//  Created by loveling on 2017/2/28.
//  Copyright © 2017年 loveling. All rights reserved.
//

import UIKit

extension UIColor{
    
    convenience init(r: CGFloat,g: CGFloat,b: CGFloat) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
    }
    
    convenience init(rand: Bool) {
        self.init(red: CGFloat(arc4random_uniform(255))/255.0, green: CGFloat(arc4random_uniform(255))/255.0, blue: CGFloat(arc4random_uniform(255))/255.0, alpha: 1.0)
       
    }
}
