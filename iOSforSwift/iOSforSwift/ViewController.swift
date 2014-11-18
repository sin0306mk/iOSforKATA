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
    @IBOutlet weak var myTxt: UITextField!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var mylongTxt: UITextView!
    
    override func viewDidLoad() {
        //FIXME:最初に画面が表示された時にする処理
        super.viewDidLoad()
        myLabel.text = "起動しました"
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.textColor = UIColor.redColor()
//        myLabel.backgroundColor = UIColor.cyanColor()
        myLabel.font = UIFont.systemFontOfSize(14)
        myLabel.numberOfLines = 0
        
        
        //TODO:色が白くなります
        //UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: false)
    }
    
    override func viewWillAppear(animated: Bool) {
        for fontFamilyName in UIFont.familyNames() {
            println("フォントファミリー名=\(fontFamilyName)")
            for fontName in UIFont.fontNamesForFamilyName(fontFamilyName as String){
                println(" >> \(fontName)")
            }
        }
    }
    
    @IBAction func taplongBtn(sender: AnyObject) {
        mylongTxt.resignFirstResponder()
        println(mylongTxt.text)
    }
    
    @IBAction func tapReturnKey(sender: AnyObject) {
    }
    override func didReceiveMemoryWarning() {
        //MARK:メモリーエラーが出た時にする処理
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func changeSlider(sender: UISlider) {
            myLabel.text = "スライダー値:\(sender.value)"
    }
    
    @IBAction func tapBtn(sender: AnyObject) {
        if (myLabel.text == "押されました"){
            myLabel.text = "こんにちは"
        }else{
            myLabel.text = "押されました"
        }
    }
    
    @IBAction func changeSwitch(sender: UISwitch) {
        if sender.on == true {
            myTxt.text = "うちゅーう、きた〜！！！"
        }else{
            myTxt.text = ""
        }
    }
}

