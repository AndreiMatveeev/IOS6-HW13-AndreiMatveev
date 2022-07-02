//
//  Constraints.swift
//  IOS6-HW13-AndreiMatveev
//
//  Created by Владелец on 02.07.2022.
//

import UIKit

extension UIView {
    
    func addSubviewsForAutoLayout(_ views: [UIView]) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
        }
    }
}
