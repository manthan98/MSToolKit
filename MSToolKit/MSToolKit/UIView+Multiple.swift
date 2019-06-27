//
//  UIView+Multiple.swift
//  MSToolKit
//
//  Created by Manthan Shah on 2019-06-26.
//  Copyright © 2019 Manthan Shah. All rights reserved.
//

import Foundation

/// This extension simplifies the addition of multiple views to a superview
/// without having to call addSubview(...) multiple times for each individual view.
public extension UIView {

    /// This function adds an array of views to the superview. It is also safe to
    /// simplify specify only one view.
    ///
    /// - Parameter views: variadic argument that allows multiple views to be specified for addition.
    public func addSubviews(_ views: UIView...) {
        views.forEach({ addSubview($0) })
    }

}
