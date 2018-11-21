//
//  HomeVc.swift
//  btp
//
//  Created by glz on 2018/11/19.
//  Copyright © 2018年 btp. All rights reserved.
//

import UIKit

class HomeVc:UIViewController,SDCycleScrollViewDelegate{
    
    @IBOutlet weak var mTopBanner: UIView!
    var cycleScrollView:SDCycleScrollView!
    var imageUrlArray = ["https://aecpm.alicdn.com/simba/img/TB183NQapLM8KJjSZFBSutJHVXa.jpg","https://aecpm.alicdn.com/simba/img/TB183NQapLM8KJjSZFBSutJHVXa.jpg","https://aecpm.alicdn.com/simba/img/TB183NQapLM8KJjSZFBSutJHVXa.jpg"]
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden = true
        cycleScrollView = SDCycleScrollView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 140))
        cycleScrollView.delegate = self
        self.cycleScrollView.imageURLStringsGroup = self.imageUrlArray as! [Any]
        mTopBanner.addSubview(cycleScrollView)
        
        
    }
    
    func cycleScrollView(_ cycleScrollView: SDCycleScrollView!, didSelectItemAt index: Int) {
        print("selected")
        
    }
}
