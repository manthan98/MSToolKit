//
//  UIStackView+Replace.swift
//  MSToolKit
//
//  Created by Manthan Shah on 2019-06-26.
//  Copyright © 2019 Manthan Shah. All rights reserved.
//

import Foundation

public extension UIStackView {

    public func replaceArrangedSubviews(with views: [UIView]) {
        arrangedSubviews.forEach {
            removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        
        views.forEach(addArrangedSubview)
    }

}
