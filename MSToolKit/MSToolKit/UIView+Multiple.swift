//
//  UIView+Multiple.swift
//  MSToolKit
//
//  Created by Manthan Shah on 2019-06-26.
//  Copyright © 2019 Manthan Shah. All rights reserved.
//

import Foundation

public extension UIView {

    public func addSubviews(_ views: UIView...) {
        views.forEach({ addSubview($0) })
    }

}
