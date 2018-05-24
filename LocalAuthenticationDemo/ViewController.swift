//
//  ViewController.swift
//  LocalAuthenticationDemo
//
//  Created by gdcp on 2018/5/24.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit
import LocalAuthentication
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let context = LAContext()
        let result = context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: nil)
        if result{
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "请使用Touch ID指纹识别", reply: {(success,error) in print(success)}
            )
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

