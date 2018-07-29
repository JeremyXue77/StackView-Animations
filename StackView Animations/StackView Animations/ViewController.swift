//
//  ViewController.swift
//  StackView Animations
//
//  Created by JeremyXue on 2018/7/28.
//  Copyright © 2018年 JeremyXue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var iconStackView: UIStackView!
    @IBOutlet weak var settingStackView: UIStackView!{
        didSet {
            settingStackView.arrangedSubviews.forEach { (view) in
                if view.tag != 5 {
                    view.isHidden = true
                }
            }
        }
    }
    
    @IBAction func showSetting(_ sender: UIButton) {
        UIView.animate(withDuration: 0.25) {
            self.settingStackView.arrangedSubviews.forEach({ (view) in
                if view.tag != 5 {
                    view.isHidden = !view.isHidden
                }
                self.settingStackView.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func showIconView(_ sender: UIButton) {
        
        let iconView = iconStackView.arrangedSubviews[sender.tag]
        
        UIView.animate(withDuration: 0.25) {
            iconView.isHidden = !iconView.isHidden
            
            if iconView.isHidden {
                sender.tintColor = iconView.backgroundColor
            } else {
                sender.tintColor = .white
            }
            self.iconStackView.layoutIfNeeded()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

