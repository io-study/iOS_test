//
//  SignInViewController.swift
//  iOS_test
//
//  Created by AnnKangHo on 2023/04/17.
//

import UIKit
import Then
import SnapKit

final class SignInViewController: BaseViewController {
    
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
    private let PWButton = UIButton().then {
        $0.setTitle("비밀번호 찾기", for: .normal)
        $0.setTitleColor(.gray, for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 14.0)
        $0.addTarget(self, action: #selector(pwButtonDidTap), for: .touchUpInside)
    }
    private let signUpButton = UIButton().then {
        $0.setTitle("회원가입", for: .normal)
        $0.setTitleColor(.gray, for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 14.0)
        $0.addTarget(self, action: #selector(signUpButtonDidTap), for: .touchUpInside)
    }
    private let blueButton = UIButton().then {
        $0.setTitle("로그인", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 16.0)
        $0.layer.cornerRadius = 8
        $0.backgroundColor = UIColor(named: "Color")
    }
    
    override func addviews() {
        view.addSubViews(titleLabel, firstTextField, secondTextField, blueButton, PWButton, signUpButton)
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
        PWButton.snp.makeConstraints {
            $0.top.equalTo(secondTextField.snp.bottom).offset(8)
            $0.trailing.equalTo(view.safeAreaLayoutGuide).inset(16)
        }
        signUpButton.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(84)
            $0.leading.trailing.equalToSuperview().inset(158)
            $0.width.equalTo(59)
            $0.height.equalTo(22)
        }
        blueButton.snp.makeConstraints {
            $0.top.equalTo(signUpButton.snp.bottom).offset(8)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.width.equalTo(343)
            $0.height.equalTo(52)
        }
    }
}
extension SignInViewController {
    @objc private func signUpButtonDidTap(){
        let signinviewcontroller = SignUpViewController()
        navigationController?.pushViewController(signinviewcontroller, animated: true)
    }
    @objc private func pwButtonDidTap(){
        let signinviewcontroller = FindPasswordViewController()
        navigationController?.pushViewController(signinviewcontroller, animated: true)
    }
}
