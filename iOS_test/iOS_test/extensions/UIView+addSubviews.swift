//
//  UIView+addSubViews.swift
//  iOS_test
//
//  Created by 정윤서 on 2023/04/17.
//

import UIKit

extension UIView {
    func addSubViews(_ subView: UIView...){
        subView.forEach(addSubview(_:))
    }
}
