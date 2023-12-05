//
//  TabSettingViewModel.swift
//  BBosong
//
//  Created by 김미진 on 11/29/23.
//

import Foundation

enum SettingType {
    case appVersion
}

struct SettingItem {
    let title: String
    let type: SettingType
}

class TabSettingViewModel {
    var settingItems: [SettingItem] = []

    func fetchItems() {
        // 아이템을 가져오는 로직이라 가정
        settingItems = [
            SettingItem(title: "현재 버전", type: .appVersion)
        ]
    }
}
