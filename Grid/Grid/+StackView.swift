//
//  +StackView.swift
//  Grid
//
//  Created by Abner Abbey on 07/03/22.
//

import Foundation
import UIKit

extension UIStackView {
    
    private class func create(withViews views: [UIView], axis: NSLayoutConstraint.Axis = .vertical, distribution: UIStackView.Distribution = .fillEqually, spacing: CGFloat = 3.0) -> UIStackView {
        
        let stack = UIStackView(arrangedSubviews: views)
        stack.axis = axis
        stack.distribution = distribution
        stack.spacing = spacing
        
        return stack
        
    }
    
    class func squareGrid(withViews grid: [[UIView]]) -> UIStackView {
        return create(withViews: grid.map { create(withViews: $0, axis: .horizontal) })
    }
    
}
