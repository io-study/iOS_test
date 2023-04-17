
//  SignUpViewController.swift
//  iOS_test
//
//  Created by AnnKangHo on 2023/04/17.
//

import UIKit
import SnapKit
import Then

final class SignUpViewController: BaseViewController {

    private let titleLabel = UILabel().then {
        $0.text = "LOGIN"
        $0.font = UIFont.boldSystemFont(ofSize: 48.0)
    }
    private let firstTextField = UITextField().then {
        $0.placeholder = "아이디"
        $0.layer.cornerRadius = 8
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.black.cgColor
        $0.leftPadding()
    }
    private let secondTextField = UITextField().then {
        $0.placeholder = "비밀번호"
        $0.layer.cornerRadius = 8
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.black.cgColor
        $0.leftPadding()
    }
    private let blueButton = UIButton().then {
        $0.setTitle("회원가입", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 16.0)
        $0.layer.cornerRadius = 8
        $0.backgroundColor = UIColor(named: "Color")
    }

    override func addviews() {
        view.addSubViews(titleLabel, firstTextField, secondTextField, blueButton)
    }

    override func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(119)
            $0.leading.trailing.equalToSuperview().inset(116)
        }
        firstTextField.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(60)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.width.equalTo(343)
            $0.height.equalTo(44)
        }
        secondTextField.snp.makeConstraints {
            $0.top.equalTo(firstTextField.snp.bottom).offset(16)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.width.equalTo(343)
            $0.height.equalTo(44)
        }
        blueButton.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(23)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.width.equalTo(343)
            $0.height.equalTo(52)
        }
    }
    override func configNavigation() {
        let backbutton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        backbutton.tintColor = .black
        self.navigationItem.backBarButtonItem = backbutton
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationItem.title = "회원가입"
        self.navigationController?.navigationBar.topItem?.title = ""
    }
}
