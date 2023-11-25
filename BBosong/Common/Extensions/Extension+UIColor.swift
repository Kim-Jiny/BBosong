//
//  Extension+UIColor.swift
//  BBosong
//
//  Created by 김미진 on 11/25/23.
//

import UIKit

extension UIColor {
    convenience init?(hex: String) {
        var formattedHexString = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        formattedHexString = formattedHexString.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        guard Scanner(string: formattedHexString).scanHexInt64(&rgb) else {
            return nil
        }

        self.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgb & 0x0000FF) / 255.0,
                  alpha: 1.0)
    }
}
