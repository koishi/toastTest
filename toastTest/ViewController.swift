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
        let toastView = UINib(nibName: "toast", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! UIView
        view.addSubview(toastView)
        toastView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([NSLayoutConstraint.init(item: toastView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
                                  NSLayoutConstraint.init(item: toastView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)])

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            toastView.removeFromSuperview()
        }
    }
}

