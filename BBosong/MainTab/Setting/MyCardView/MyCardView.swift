//
//  MyCardView.swift
//  BBosong
//
//  Created by 김미진 on 12/4/23.
//

import Foundation
import UIKit
import SnapKit

class MyCardView: UIView {
    
    lazy var myProfile: UIImageView = {
        let v = UIImageView(frame: .zero)
        return v
    }()
    
    lazy var myName: UILabel = {
        let v = UILabel(frame: .zero)
        return v
    }()
    
    lazy var myNumber: UILabel = {
        let v = UILabel(frame: .zero)
        return v
    }()
    
    lazy var myEmail: UILabel = {
        let v = UILabel(frame: .zero)
        return v
    }()
    
    lazy var editButton: UIButton = {
        let v = UIButton(frame: .zero)
        return v
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    private func setupUI() {
        self.addSubview(myProfile)
        myProfile.snp.makeConstraints { make in
            make.width.height.equalTo(50)
            make.leading.equalToSuperview().offset(10)
            make.centerY.equalToSuperview()
        }
        
        self.addSubview(myName)
        myName.snp.makeConstraints { make in
            make.leading.equalTo(myProfile.snp.trailing).offset(8)
            make.top.equalTo(myProfile.snp.top)
        }
        
        self.addSubview(myNumber)
        myNumber.snp.makeConstraints { make in
            make.leading.equalTo(myName.snp.leading)
            make.top.equalTo(myName.snp.bottom)
        }
        
        self.addSubview(myEmail)
        myEmail.snp.makeConstraints { make in
            make.leading.equalTo(myName.snp.leading)
            make.top.equalTo(myNumber.snp.bottom)
        }
        
        self.addSubview(editButton)
        editButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(10)
            make.centerY.equalToSuperview()
        }
    }
    
    func viewInit(_ myData: UserInfo) {
        self.myProfile.image = UIImage(data: myData.userProfile)
        self.myName.text = myData.nickname
        self.myNumber.text = myData.phoneNumber
        self.myEmail.text = myData.eMail
        
        self.editButton.setImage(UIImage(systemName: "pencil.circle")!.imageWithColor(.BBColor.mainColor), for: .normal)
    }
}
