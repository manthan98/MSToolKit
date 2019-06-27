//
//  UIAlertController+Default.swift
//  MSToolKit
//
//  Created by Manthan Shah on 2019-06-26.
//  Copyright © 2019 Manthan Shah. All rights reserved.
//

import Foundation

public extension UIAlertController {

    public convenience init(title: String, message: String, preferredStyle: UIAlertController.Style, actionTitle: String, actionStyle: UIAlertAction.Style) {
        self.init(title: title, message: message, preferredStyle: preferredStyle)
        let okAction = UIAlertAction(title: actionTitle, style: actionStyle)
        self.addAction(okAction)
    }

}
