//
//  ViewController.swift
//  HelloWorld
//
//  Created by 童俊傑 on 2019/1/28.
//  Copyright © 2019年 Sarah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showMessage() {
        let caneclAlert = UIAlertController(
            title: "",
            message: "加油！開心點🤡",
            preferredStyle: .actionSheet)
        func test(){
            print("取消完成拉")
        }
        let alertController = UIAlertController(
            title: "Hi🙋🏻‍♀️",
            message: "你今天過的好嗎?",
            preferredStyle: .alert)
        
        // 建立[取消]按鈕
        let cancelAction = UIAlertAction(
            title: "不好",
            style: .cancel) { (name) in
                self.present(
                    caneclAlert,
                    animated: true,
                    completion: nil)
            
                print("取消完成拉")
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                    self.presentedViewController?.dismiss(animated: false, completion: nil)
                }
        }
        alertController.addAction(cancelAction)
        
        // 建立[送出]按鈕
        let okAction = UIAlertAction(
            title: "好",
            style: .default,
            handler: nil)
        alertController.addAction(okAction)

        self.present(
            alertController,
            animated: true,
            completion: nil)
    }

}

