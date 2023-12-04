//
//  UserInfo.swift
//  BBosong
//
//  Created by 김미진 on 12/4/23.
//

import Foundation

struct UserInfo {
    var uuid: String
    var userProfile: Data
    var nickname: String
    var name: String
    var phoneNumber: String
    var eMail: String
    
    var petList: [PetInfo]
}
