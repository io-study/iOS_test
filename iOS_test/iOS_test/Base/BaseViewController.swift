//
//  ViewController.swift
//  iOS_test
//
//  Created by 정윤서 on 2023/04/17.
//

import UIKit
import SnapKit
import Then

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        addviews()
        setLayout()
        configNavigation()
    }

    func addviews(){}
    func setLayout(){}
    func configNavigation(){}
}

