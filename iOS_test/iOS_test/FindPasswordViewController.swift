//
//  FindPasswordViewController.swift
//  iOS_test
//
//  Created by 정윤서 on 2023/04/17.
//

import UIKit

final class FindPasswordViewController: BaseViewController {
    // MARK: - Properties
    
    private let findMainLabel = UILabel().then{
        $0.text = "ID"
        $0.font = UIFont.boldSystemFont(ofSize: 48)
        $0.textColor = UIColor.black
    }
    
    private let findTextField = UITextField().then{
        $0.placeholder = "아이디"
        $0.layer.cornerRadius = 8
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.black.cgColor
        $0.leftPadding()
    }
    
    private let findButton = UIButton().then{
        $0.backgroundColor = UIColor(named: "Color")
        $0.setTitle("찾기", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 8
    }
    
    // MARK: - UI
    
    override func addviews() {
        view.addSubViews(findMainLabel, findTextField, findButton)
    }
    
    override func setLayout() {
        findMainLabel.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(72)
            $0.centerX.equalToSuperview()
        }
        
        findTextField.snp.makeConstraints{
            $0.top.equalTo(findMainLabel.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(343)
            $0.height.equalTo(44)
        }
        
        findButton.snp.makeConstraints{
            $0.bottom.equalToSuperview().inset(54)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(343)
            $0.height.equalTo(52)
        }
    }
    
    override func configNavigation() {
        let backbutton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
                backbutton.tintColor = .black
                self.navigationItem.backBarButtonItem = backbutton
                self.navigationController?.navigationBar.tintColor = .black
                self.navigationItem.title = "비밀번호 찾기"
                self.navigationController?.navigationBar.topItem?.title = ""
    }
}
