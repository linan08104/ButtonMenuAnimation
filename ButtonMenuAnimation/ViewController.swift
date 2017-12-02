//
//  ViewController.swift
//  ButtonMenuAnimation
//
//  Created by apple on 2017/12/2.
//  Copyright © 2017年 linan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var dietBtn: UIButton!
    @IBOutlet weak var rideBtn: UIButton!
    @IBOutlet weak var runBtn: UIButton!
    
    var dietBtnOriginCenter: CGPoint!
    var rideBtnOriginCenter: CGPoint!
    var runBtnOriginCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 保存dietBtn、rideBtn、runBtn这三个按钮在屏幕中的初始位置
        dietBtnOriginCenter = dietBtn.center
        rideBtnOriginCenter = rideBtn.center
        runBtnOriginCenter = runBtn.center
        
        // 让dietBtn、rideBtn、runBtn这三个按钮位于addBtn按钮中心
        dietBtn.center = addBtn.center
        rideBtn.center = addBtn.center;
        runBtn.center = addBtn.center;
    }
    
    //MARK: - 点击加号按钮
    @IBAction func addBtnClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected {
            UIView.animate(withDuration: 0.3, animations: {
                self.dietBtn.alpha = 1;
                self.rideBtn.alpha = 1;
                self.runBtn.alpha = 1;
                self.dietBtn.center = self.dietBtnOriginCenter
                self.rideBtn.center = self.rideBtnOriginCenter
                self.runBtn.center = self.runBtnOriginCenter
                self.addBtn.setBackgroundImage(#imageLiteral(resourceName: "btn_home_add_packup"), for: .normal)
            })
        } else {
            UIView.animate(withDuration: 0.3, animations: {
                self.dietBtn.alpha = 0;
                self.rideBtn.alpha = 0;
                self.runBtn.alpha = 0;
                self.dietBtn.center = self.addBtn.center
                self.rideBtn.center = self.addBtn.center
                self.runBtn.center = self.addBtn.center
                self.addBtn.setBackgroundImage(#imageLiteral(resourceName: "btn_home_add_unfold"), for: .normal)
            })
        }
    }
}
















