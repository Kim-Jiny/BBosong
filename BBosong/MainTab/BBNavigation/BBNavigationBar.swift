//
//  BBNavigationBar.swift
//  BBosong
//
//  Created by 김미진 on 12/1/23.
//

import Foundation
import UIKit

protocol BBNavigationDelegate {
    func dismiss()
}

class BBNavigationBar: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    private func setupUI() {
        
    }
}
