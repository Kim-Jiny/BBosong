//
//  TabHomeViewModel.swift
//  BBosong
//
//  Created by 김미진 on 11/29/23.
//

import Foundation
class TabHomeViewModel {
    var items: [Item] = []

    func fetchItems() {
        // 아이템을 가져오는 로직이라 가정
        items = [
            Item(title: "Item 1"),
            Item(title: "Item 2"),
            Item(title: "Item 3")
        ]
    }
}
