//
//  PasswordTFViewController.swift
//  homeWork_6_mont_3
//
//  Created by Аяз on 2/5/23.
//

import UIKit
import SnapKit
import IQKeyboardManagerSwift

public class PasswordTF: UITextField {
    
    private let showPaswrdBtn = UIButton(type: .custom)
    private var pswrdHidden = true
    
  public  override func layoutSubviews() {
        super.layoutSubviews()
      showPaswrdBtn.frame = rightViewRect(forBounds: bounds)
    }
    
   public override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var rightViewRect = super.rightViewRect(forBounds: bounds)
        
        rightViewRect.origin.x = bounds.width - rightViewRect.width - 10
          
        return rightViewRect
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        showPaswrdBtn.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        showPaswrdBtn.addTarget(self, action: #selector(showPasswordButtonTapped), for: .touchUpInside)
        rightView = showPaswrdBtn
        rightViewMode = .always
        isSecureTextEntry = true
        showPaswrdBtn.tintColor = .darkGray
    }
    
    @objc private func showPasswordButtonTapped() {
        isSecureTextEntry.toggle()
        
        let eye = isSecureTextEntry ? "eye.slash" : "eye"
        showPaswrdBtn.setImage(UIImage(systemName: eye), for: .normal)
    }
}
