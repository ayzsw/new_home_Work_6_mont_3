//
//  StartViewController.swift
//  homeWork_6_mont_3
//
//  Created by Аяз on 26/4/23.
//

import UIKit
import SnapKit
import IQKeyboardManagerSwift


class StartViewController: UIViewController {
    
    
    
    private let blueImage: UIImageView = {
        
        let imageView =  UIImageView()
        imageView.image = UIImage(named: "blue")
        return imageView
        
    }()
    
    private let facebookLogo: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "facebook")
        return imageView
        
    }()
    
    private let googleLogo: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "google")
        return imageView
        
    }()
    
    
    private let instagramLogo: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "insta")
        return imageView
        
    }()
    
    private let welcomLabel: UILabel = {
        
        let uiLabel = UILabel()
        uiLabel.text = "Welcome"
        uiLabel.textAlignment = .center
        uiLabel.font = UIFont.boldSystemFont(ofSize: 28)
        uiLabel.textColor = .white
        
        
        return uiLabel
    }()
    
    private let toLabel: UILabel = {
        
        let toLabel = UILabel()
        toLabel.text = "Login to your account"
        toLabel.textAlignment = .center
        toLabel.font = UIFont.boldSystemFont(ofSize: 20)
        toLabel.textColor = .gray
        
        
        return toLabel
    }()
    
    private let emailLabel: UILabel = {
        
        let emailLabel = UILabel()
        emailLabel.text = "Email"
        emailLabel.textColor  = .white
        emailLabel.font = UIFont.boldSystemFont(ofSize: 18)
        return emailLabel
    }()
    
    private let passwordLabel: UILabel = {
        
        let passwordLabel = UILabel()
        passwordLabel.text = "Password"
        passwordLabel.textColor  = .white
        passwordLabel.font = UIFont.boldSystemFont(ofSize: 18)
        return passwordLabel
    }()
    
    private let frgtPswrdLabel: UILabel = {
        
        let frgtPswrdLabel = UILabel()
        frgtPswrdLabel.text = "Forgot Password?"
        frgtPswrdLabel.textColor  = .red
        frgtPswrdLabel.font = UIFont.boldSystemFont(ofSize: 16)
        return frgtPswrdLabel
    }()
    
    private let dontAcLabel: UILabel = {
        
        let dontAccLabel = UILabel()
        dontAccLabel.text = "Don’t have account? "
        dontAccLabel.textColor  = .gray
        dontAccLabel.font = UIFont.boldSystemFont(ofSize: 16)
        return dontAccLabel
    }()
    
    private let createNowLabel: UILabel = {
        
        let createAccLabel = UILabel()
        createAccLabel.text = "Create Now"
        createAccLabel.textColor  = .white
        createAccLabel.font = UIFont.boldSystemFont(ofSize: 16)
        return createAccLabel
    }()
    
    
    private let emailTextField: UITextField = {
        let emailTF = UITextField()
        
        
        emailTF.placeholder = "Email"
        emailTF.layer.cornerRadius = 6
        let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
        emailTF.leftView = spacerView
        emailTF.leftViewMode = .always
        emailTF.backgroundColor = .white
        return emailTF
        
    }()
    
    private let passwordTextField: UITextField = {
        let pswrdTF = PasswordTF()
        pswrdTF.placeholder = "Password"
        pswrdTF.layer.cornerRadius = 6
        let spacerView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
        pswrdTF.leftView = spacerView
        pswrdTF.leftViewMode = .always
        pswrdTF.backgroundColor = .white
        return pswrdTF
    }()
    
    
    
    private let loginButton: UIButton = {
        let lgoinbtn = UIButton()
        lgoinbtn.setTitle("Login", for: .normal)
        lgoinbtn.setTitleColor(.white, for: .normal)
        lgoinbtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        lgoinbtn.layer.cornerRadius = 24
        lgoinbtn.backgroundColor = .systemBlue
        
        return lgoinbtn
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        initUI()
        addGesture()
        
    }
    
    private func initUI (){
        [blueImage, welcomLabel, toLabel, emailLabel, emailTextField,passwordLabel, passwordTextField, frgtPswrdLabel, loginButton, dontAcLabel, createNowLabel, facebookLogo, googleLogo, instagramLogo].forEach { box in
            view.addSubview(box)
        }
        constraint()
        initAction()
    }
    
    
    
    private func constraint (){
        
        
        blueImage.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(0)
            make.leading.trailing.equalToSuperview().inset(0)
            make.height.equalTo(200)
        }
        facebookLogo.snp.makeConstraints { make in
            make.top.equalTo(dontAcLabel.snp.bottom).offset(11)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(30)
        }
        
        instagramLogo.snp.makeConstraints { make in
            make.top.equalTo(facebookLogo.snp.top)
            make.left.equalTo(facebookLogo.snp.right).offset(42)
            make.height.width.equalTo(30)
        }
        
        googleLogo.snp.makeConstraints { make in
            make.top.equalTo(facebookLogo.snp.top)
            make.right.equalTo(facebookLogo.snp.left).offset(-42)
            make.height.width.equalTo(30)
        }

        
        welcomLabel.snp.makeConstraints { make in
            make.top.equalTo(blueImage.snp.bottom).offset(51)
            make.leading.trailing.equalToSuperview().inset(120)
        }
        
        toLabel.snp.makeConstraints { make in
            make.top.equalTo(welcomLabel.snp.bottom).offset(0)
            make.leading.trailing.equalToSuperview().inset(80)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(toLabel.snp.bottom).offset(25)
            make.leading.equalToSuperview().inset(30)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(6)
            make.leading.equalToSuperview().inset(30)
        }
        
        frgtPswrdLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(6)
            make.trailing.equalToSuperview().inset(30)
        }
        
        dontAcLabel.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(14)
            make.leading.equalToSuperview().inset(70)
        }
        
        createNowLabel.snp.makeConstraints { make in
            make.top.equalTo(dontAcLabel.snp.top)
            make.left.equalTo(dontAcLabel.snp.right)
            
        }
        
        
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(frgtPswrdLabel.snp.bottom).offset(28)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
        
        
        
        
    }
    
    private func addGesture(){
        createNowLabel.isUserInteractionEnabled = true
        createNowLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(createNowTapped)))
    }
    
    @objc func createNowTapped() {
        print("UILabel был нажат")
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    private func initAction(){
        loginButton.addTarget(self, action: #selector(login(_ :)), for: .touchUpInside)
        ()
    }
    
    @objc func login(_ sender: UIButton){
        if emailTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true {
            
            textField(emailTextField)
            textField(passwordTextField)
        }
        if emailTextField.text!.count > 0 || passwordTextField.text!.count > 0{
            emailTextField.layer.borderColor = UIColor.white.cgColor
            passwordTextField.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    
    func textField (_ text:UITextField)  {
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor.red.cgColor
        text.placeholder = "Пожалуйста заполните"
    }
}

