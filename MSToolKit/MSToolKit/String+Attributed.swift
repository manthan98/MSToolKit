//
//  String+Attributed.swift
//  MSToolKit
//
//  Created by Manthan Shah on 2019-06-26.
//  Copyright © 2019 Manthan Shah. All rights reserved.
//

import Foundation

/// This extension simplifies adding color properties to a string.
public extension String {

    /// This function allows specification of an `UIColor` for a specific part of a string for usage
    /// as attributed text.
    ///
    /// - Parameter textToFind: the text to which color property should be applied.
    /// - Parameter color: the desired `UIColor` property for the portion of the specified string.
    /// - Returns: a mutable string that can be used as `attributedText`.
    public func attributedStringForPartiallyColoredText(_ textToFind: String, with color: UIColor) -> NSMutableAttributedString {
        let mutableAttributedstring = NSMutableAttributedString(string: self)
        let range = mutableAttributedstring.mutableString.range(of: textToFind, options: .caseInsensitive)
        
        if range.location != NSNotFound {
            mutableAttributedstring.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        }
        
        return mutableAttributedstring
    }

}
