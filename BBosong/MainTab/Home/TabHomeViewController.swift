//
//  TabHomeViewController.swift
//  BBosong
//
//  Created by 김미진 on 11/29/23.
//

import Foundation
import UIKit
import SnapKit

class TabHomeViewController: UIViewController {
    var viewModel: TabHomeViewModel!
    
    lazy var mainScrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.backgroundColor = .BBColor.mainColor
        return scrollView
    }()

    lazy var mainStackView: UIStackView = {
        let st = UIStackView(frame: .zero)
        return st
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // 뷰 모델 초기화 및 데이터 가져오기
        viewModel = TabHomeViewModel()
        viewModel.fetchItems()
        
//        self.view.backgroundColor = .red
        // TODO: 뷰 구성 및 아이템 표시
        setupUI()
    }
    
    private func setupUI() {
        self.view.addSubview(mainScrollView)
        mainScrollView.snp.makeConstraints { maker in
            maker.top.bottom.leading.trailing.equalToSuperview()
            maker.width.equalToSuperview()
            maker.height.equalToSuperview().priority(.low)
        }
        
        mainScrollView.addSubview(mainStackView)
        mainStackView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
    }
}
