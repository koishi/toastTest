//
//  ViewController.swift
//  toastTest
//
//  Created by KoichiroOishi on 2017/11/24.
//  Copyright © 2017年 KoichiroOishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapped(_ sender: UIButton) {
        ToastView.show()
    }
}

