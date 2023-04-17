//
//  UITextField+leftPadding.swift
//  iOS_test
//
//  Created by 정윤서 on 2023/04/17.
//

import UIKit

extension UITextField {
    func leftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 9, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
}
