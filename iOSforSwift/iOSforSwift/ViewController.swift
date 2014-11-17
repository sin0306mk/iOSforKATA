//
//  ViewController.swift
//  iOSforSwift
//
//  Created by 河合 誠 on 2014/11/15.
//  Copyright (c) 2014年 河合 誠. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        //FIXME:最初に画面が表示された時にする処理
        super.viewDidLoad()
        myLabel.text = "起動画面です"
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.textColor = UIColor.redColor()
//        myLabel.backgroundColor = UIColor.cyanColor()
        myLabel.font = UIFont.systemFontOfSize(14)
        myLabel.numberOfLines = 0
        
        
        //TODO:色が白くなります
        //UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: false)
    }
    override func didReceiveMemoryWarning() {
        //MARK:メモリーエラーが出た時にする処理
        super.didReceiveMemoryWarning()
    }
}

