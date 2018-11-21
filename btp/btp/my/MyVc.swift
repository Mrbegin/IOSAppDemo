//
//  MyVc.swift
//  btp
//
//  Created by glz on 2018/11/19.
//  Copyright © 2018年 btp. All rights reserved.
//

import UIKit
class MyVc: UITableViewController{
    @IBOutlet weak var userImage:UIImageView!
    @IBOutlet weak var myDesBtn:UIButton!
    @IBOutlet weak var mRefreshBtn:UIButton!
    let spaceHeight:CGFloat = 10
    override func viewDidLoad() {
        self.tableView.delegate = self
        //设置图像为圆形
        userImage.layer.cornerRadius = userImage.frame.size.width/2
        userImage.clipsToBounds = true
        userImage.layer.borderWidth = 2
        userImage.layer.borderColor = UIColor.white.cgColor
        
        myDesBtn.layer.cornerRadius = 3
        mRefreshBtn.layer.cornerRadius = 3
        //self.tableView.contentInset = 
    }
   
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return self.spaceHeight
        }else{
            return 0.1
        }
        
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
       
        return spaceHeight;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: false)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 1 || indexPath.section == 2{
            return 50
        }
        return super.tableView(tableView, heightForRowAt: indexPath)
    }
    
}
