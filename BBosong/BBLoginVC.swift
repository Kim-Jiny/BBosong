//
//  BBLoginVC.swift
//  BBosong
//
//  Created by 김미진 on 11/25/23.
//

import Foundation
import UIKit
import SnapKit

class BBLoginVC: UIViewController {
    
    lazy var backgroundView: UIView = {
        let v = UIView(frame: .zero)
        v.backgroundColor = .BBColor.mainColor
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        self.view.addSubview(backgroundView)

        self.backgroundView.snp.makeConstraints { maker in
            maker.top.bottom.leading.trailing.equalToSuperview()
        }
    }
}
