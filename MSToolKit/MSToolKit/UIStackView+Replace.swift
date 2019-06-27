//
//  UIStackView+Replace.swift
//  MSToolKit
//
//  Created by Manthan Shah on 2019-06-26.
//  Copyright © 2019 Manthan Shah. All rights reserved.
//

import Foundation

/// This extension simplifies the replacement of views in a stackview.
public extension UIStackView {

    /// This function replaces the subviews in a stackview.
    ///
    /// - Parameter with: array of views to replace the current stackview's arranged subviews with.
    public func replaceArrangedSubviews(with views: [UIView]) {
        arrangedSubviews.forEach {
            removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        
        views.forEach(addArrangedSubview)
    }

}
