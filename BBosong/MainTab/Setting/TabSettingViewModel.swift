//
//  TabSettingViewModel.swift
//  BBosong
//
//  Created by 김미진 on 11/29/23.
//

import Foundation

struct Item {
    let title: String
}

class TabSettingViewModel {
    var items: [Item] = []

    func fetchItems() {
        // 아이템을 가져오는 로직이라 가정
        items = [
            Item(title: "Item A"),
            Item(title: "Item B"),
            Item(title: "Item C")
        ]
    }
}
