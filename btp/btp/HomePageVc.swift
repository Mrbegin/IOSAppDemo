//
//  HomePageVc.swift
//  btp
//
//  Created by glz on 2018/11/19.
//  Copyright © 2018年 btp. All rights reserved.
//

import UIKit
class HomePageVc: UITabBarController,UITabBarControllerDelegate{
    override func viewDidLoad() {
       super.viewDidLoad()
    UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13)], for: UIControl.State.normal)
        
        self.delegate = self
        let backItem = UIBarButtonItem.init(title: "", style: .plain, target: nil, action: nil)
        // backItem.image =
        self.navigationController?.navigationBar.shadowImage = UIImage.init()
        //设置返回按钮 以及颜色
        self.navigationController?.navigationBar.backIndicatorImage = UIImage.init()
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage.init()
        //self.navigationController?.navigationBar.tintColor = DiyColors.getStringColors(.back_color)
        backItem.image = UIImage(named: "back")

        self.navigationItem.backBarButtonItem = backItem
        
    self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
//
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        let index = tabBarController.viewControllers?.index(of:viewController)
        if index == 0 || index == 3 {
            self.navigationController?.isNavigationBarHidden = true
        }else{
            self.navigationController?.isNavigationBarHidden = false
        }
        if(index==0){
            self.navigationItem.title = ""
        }else if(index == 1){
            self.navigationItem.title = "职位"
        }else if(index == 2){
            self.navigationItem.title = "人才"
        }else if(index == 3){
            self.navigationItem.title = "个人中心"
        }
//        if index == 3{
//            return false
//        }
        return true
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
       // print("tabBar")
    }
}
