//
//  StackGridTests.swift
//  GridTests
//
//  Created by Abner Abbey on 07/03/22.
//

import XCTest
@testable import Grid

class StackGridTests: XCTestCase {
    
    /*
        | | | | |
        | | | | |
        | | | | |
     
     */
    
    func test_sut_hasZeroColumns() {
        
        let sut = makeSUT(0)
        
        XCTAssertEqual(sut.arrangedSubviews.count, 0)
        
    }
    
    func test_sut_isSquare() {
        
        let sut = makeSUT(5)
        
        let cols = sut.arrangedSubviews.count
        let rows = (sut.arrangedSubviews[0] as! UIStackView).arrangedSubviews.count
        
        XCTAssertEqual(cols, rows)
    }
    
    func test_sut_outerStack_isVerticalAxis() {
        
        let sut = makeSUT(5)
        
        let outerAxis = sut.axis
        
        XCTAssertEqual(outerAxis, .vertical)
        
    }
    
    func test_sut_innerStack_isHorizontalAxis() {
        
        let sut = makeSUT(5)
        
        let outerAxis = (sut.arrangedSubviews[0] as! UIStackView).axis
        
        XCTAssertEqual(outerAxis, .horizontal)
        
    }
    
    
    // MARK: - Helper Functions
    private func makeSUT(_ size: Int) -> UIStackView {
        
        return UIStackView.squareGrid(withViews: UIView.squareGrid(withSize: size))
        
    }

}
