//
//  ToastView.swift
//  toastTest
//
//  Created by KoichiroOishi on 2017/11/24.
//  Copyright © 2017年 KoichiroOishi. All rights reserved.
//

import UIKit

class ToastView {
    private static var isShowing = false

    static func show() {
        guard !isShowing else {
            return
        }
        let toastView = UINib(nibName: "toast", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
        let appdelegate = UIApplication.shared.delegate
        if let appdelegateWindow = appdelegate?.window, let window = appdelegateWindow {
            isShowing = true
            window.addSubview(toastView)
            toastView.translatesAutoresizingMaskIntoConstraints = false
            window.addConstraints([NSLayoutConstraint.init(item: toastView, attribute: .centerX, relatedBy: .equal, toItem: window, attribute: .centerX, multiplier: 1, constant: 0),
                                   NSLayoutConstraint.init(item: toastView, attribute: .centerY, relatedBy: .equal, toItem: window, attribute: .centerY, multiplier: 1, constant: 0)])
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                toastView.removeFromSuperview()
                isShowing = false
            }
        }
    }
}
