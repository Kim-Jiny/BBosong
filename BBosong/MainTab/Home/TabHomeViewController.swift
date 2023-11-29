//
//  TabHomeViewController.swift
//  BBosong
//
//  Created by 김미진 on 11/29/23.
//

import Foundation
import UIKit

class TabHomeViewController: UIViewController {
    var viewModel: TabHomeViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // 뷰 모델 초기화 및 데이터 가져오기
        viewModel = TabHomeViewModel()
        viewModel.fetchItems()
        
//        self.view.backgroundColor = .red
        // TODO: 뷰 구성 및 아이템 표시
    }
}
