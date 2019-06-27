//
//  UILabel+Default.swift
//  MSToolKit
//
//  Created by Manthan Shah on 2019-06-26.
//  Copyright © 2019 Manthan Shah. All rights reserved.
//

import Foundation

/// This extension makes it easy to initialize an `UILabel`.
public extension UILabel {
    
    /// This function initializes an `UILabel` with multiple common properties.
    ///
    /// - Parameter text: the primary text for the label.
    /// - Parameter textAlignment: the alignment of the label, which by default is `NSTextAlignment.left`.
    /// - Parameter textColor: the desired `UIColor` property for the label text, which by default is `UIColor.black`.
    /// - Parameter font: the font property for the text, which is system font of size 17 by default.
    public convenience init(text: String,
                            textAlignment: NSTextAlignment = .left,
                            textColor: UIColor = .black,
                            font: UIFont = UIFont.systemFont(ofSize: 17)) {
        
        self.init()
        self.text = text
        self.textAlignment = textAlignment
        self.textColor = textColor
        self.font = font
    }
    
}
