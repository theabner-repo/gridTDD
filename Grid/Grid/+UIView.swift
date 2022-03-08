//
//  +UIView.swift
//  Grid
//
//  Created by Abner Abbey on 07/03/22.
//

import Foundation
import UIKit

extension UIView {
    
    convenience init(withBackgroundColor color: UIColor) {
        self.init()
        self.backgroundColor = color
    }
    
    class func squareGrid(withSize size: Int, withBackgroundColor color: UIColor = .systemBackground) -> [[UIView]] {
        
        return (0..<size).map { _ in (0..<size).map { _ in UIView(withBackgroundColor: color) }}
        
    }
    
}
