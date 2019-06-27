//
//  UIAlertController+Default.swift
//  MSToolKit
//
//  Created by Manthan Shah on 2019-06-26.
//  Copyright © 2019 Manthan Shah. All rights reserved.
//

import Foundation

/// This extension simplifies the creation of an UIAlertController.
public extension UIAlertController {

    /// This function generates an `UIAlertController` with common, pre-defined properties.
    ///
    /// - Parameter title: the header title of the alert.
    /// - Parameter message: the descriptive body text that provides more details about the alert.
    /// - Parameter preferredStyle: the style to use when presenting the alert controller.
    /// - Parameter actionTitle: the title of the primary action button on the alert controller.
    /// - Parameter actionStyle: the method of presentation for the alert controller.
    public convenience init(title: String,
                            message: String,
                            preferredStyle: UIAlertController.Style,
                            actionTitle: String,
                            actionStyle: UIAlertAction.Style) {
        
        self.init(title: title, message: message, preferredStyle: preferredStyle)
        let primaryAction = UIAlertAction(title: actionTitle, style: actionStyle)
        self.addAction(primaryAction)
    }

}
