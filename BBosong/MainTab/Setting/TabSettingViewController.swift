//
//  TabSettingViewController.swift
//  BBosong
//
//  Created by 김미진 on 11/29/23.
//

import Foundation
import UIKit

class TabSettingViewController: UIViewController {
    var viewModel: TabSettingViewModel!
    
    lazy var mainScrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.backgroundColor = .BBColor.subColor
        return scrollView
    }()
    
    lazy var settingStackView: UIStackView = {
        let st = UIStackView(frame: .zero)
        return st
    }()
    
    lazy var settingStackView: UIStackView = {
        let st = UIStackView(frame: .zero)
        return st
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 뷰 모델 초기화 및 데이터 가져오기
        viewModel = TabSettingViewModel()
        viewModel.fetchItems()
        
        setupUI()
    }
    
    private func setupUI() {
        self.view.addSubview(mainScrollView)
        mainScrollView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview().priority(.low)
        }
        
        mainScrollView.addSubview(settingStackView)
        settingStackView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
    }
}
