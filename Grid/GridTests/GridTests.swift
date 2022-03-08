//
//  GridTests.swift
//  GridTests
//
//  Created by Abner Abbey on 07/03/22.
//

import XCTest
@testable import Grid

class GridTests: XCTestCase {

    func test_matrix_withZeroSize() {
        
        let sut = UIView.squareGrid(withSize: 0)
        
        XCTAssertEqual(sut, [])
        
    }
    
    func test_matrix_withOneSize() {
        
        let sut = UIView.squareGrid(withSize: 1)
        
        XCTAssertEqual(sut.count, 1)
        
    }
    
    func test_matrix_withSevenSize() {
        
        let sut = UIView.squareGrid(withSize: 7)
        
        XCTAssertEqual(sut.count, 7)
        
    }
    
    func test_matrix_isSquare() {
        
        let sut = UIView.squareGrid(withSize: 7)
        
        let rows = sut.count
        let cols = sut[0].count
        
        XCTAssertEqual(rows, cols)
        
    }
    
    
    
    

}
