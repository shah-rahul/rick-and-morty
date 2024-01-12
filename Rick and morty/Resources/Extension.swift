//
//  Extension.swift
//  Rick and morty
//
//  Created by Rahul  on 12/01/24.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        views.forEach({
            self.addSubview($0)
        })
    }
}
