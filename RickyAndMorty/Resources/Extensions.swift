//
//  Extensions.swift
//  RickyAndMorty
//
//  Created by EMİN ÇETİN on 5.03.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            self.addSubview($0)
        })
    }
}
