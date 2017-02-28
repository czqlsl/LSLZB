//
//  LSLPageTitleView.swift
//  LSLZB
//
//  Created by loveling on 2017/2/27.
//  Copyright © 2017年 loveling. All rights reserved.
//

import UIKit
private let kScrollLineH : CGFloat = 2
class LSLPageTitleView: UIView {

    public var titles: [String]
    
    
     lazy var scrollView : UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false;
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        return scrollView
    }()
    
    lazy var scrollLine : UIView = {
        let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    }()
    lazy var titleLables : [UILabel] = [UILabel]()
    //自定义构造
    init(frame: CGRect,titles :[String]) {
        self.titles = titles
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
extension LSLPageTitleView{
    public func setupUI(){
        addSubview(scrollView)
        scrollView.frame = bounds
        setupTitleLabels()
        setupBottonLineAndScrollLine()
    }
    private func setupTitleLabels(){
        let labelW : CGFloat = frame.width/CGFloat(titles.count)
        let labelH : CGFloat = frame.height - kScrollLineH
        let labelY : CGFloat = 0
        for (index,title) in titles.enumerated() {
            let label = UILabel()
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
    
            let labelX : CGFloat = labelW * CGFloat(index)
            label.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            titleLables.append(label)
            scrollView.addSubview(label)
        }
    }
    private func setupBottonLineAndScrollLine(){
        let bottonLine = UIView()
        bottonLine.backgroundColor = UIColor.lightGray
        let lineH :CGFloat = 0.5
        bottonLine.frame = CGRect(x: 0, y: frame.height - lineH, width: frame.width, height: lineH)
        addSubview(bottonLine)
        
        guard let firstLabel = titleLables.first else { return }
        firstLabel.textColor = UIColor.orange
        scrollView.addSubview(scrollLine)
        
        scrollLine.frame = CGRect(x: firstLabel.frame.origin.x, y: frame.height - kScrollLineH, width: firstLabel.frame.width, height: kScrollLineH)
    }
}
