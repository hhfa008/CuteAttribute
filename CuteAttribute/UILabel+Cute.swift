//
//  UILabel+Cute.swift
//  CuteAttribute
//
//  Created by vsccw on 2017/8/27.
//  Copyright © 2017年 https://vsccw.com. All rights reserved.
//

import UIKit

extension UILabel: CuteAttributeable { }

public extension CuteAttribute where Base: UILabel {
    
    public var attributedText: CuteAttribute<NSMutableAttributedString>? {
        set {
            base.attributedText = newValue?.attributedString
            base._cuteAttribute = newValue
        }
        get {
            return base._cuteAttribute
        }
    }
}
