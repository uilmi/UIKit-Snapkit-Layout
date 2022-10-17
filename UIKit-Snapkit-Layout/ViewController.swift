//
//  ViewController.swift
//  UIKit-Snapkit-Layout
//
//  Created by Ulul I. on 17/10/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
//    var yellowbox = UIView()
    var yellowbox: UIView = {
        let box = UIView()
        box.backgroundColor = UIColor.yellow
        box.layer.cornerRadius = 40
        box.layer.masksToBounds = true
        box.layer.borderWidth = 2
        box.layer.borderColor = UIColor.yellow.cgColor
        
        return box
    }()
    
    var grayBox: UIView = {
        let box = UIView()
        box.backgroundColor = UIColor.gray
        box.layer.cornerRadius = 40
        box.layer.masksToBounds = true
        box.layer.borderWidth = 2
        box.layer.borderColor = UIColor.gray.cgColor
        
        return box
    }()
    
    var orangeBox: UIView = {
        let box = UIView()
        box.backgroundColor = UIColor.orange
        box.layer.cornerRadius = 40
        box.layer.masksToBounds = true
        box.layer.borderWidth = 2
        box.layer.borderColor = UIColor.orange.cgColor
        
        return box
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        layoutSnapkit()
    }
    
    private func setupView() {
        view.addSubview(yellowbox)
        view.addSubview(orangeBox)
        view.addSubview(grayBox)
    }
    
    private func layoutSnapkit() {
        yellowbox.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(80)
            make.center.equalTo(view.snp.center)
        }
        orangeBox.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(80)
            make.centerX.equalTo(100)
            make.centerY.equalTo(100)
        }
        grayBox.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(80)
            make.centerX.equalTo(200)
            make.centerY.equalTo(200)
        }
        
        
    }


}

