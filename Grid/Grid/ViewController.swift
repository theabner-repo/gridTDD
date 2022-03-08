//
//  ViewController.swift
//  Grid
//
//  Created by Abner Abbey on 07/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var gridView: [[UIView]] = UIView.squareGrid(withSize: 7, withBackgroundColor: .systemYellow)
    
    private lazy var gridStack: UIStackView = {
        
        let stack = UIStackView.squareGrid(withViews: gridView)
        stack.backgroundColor = .systemMint
        return stack
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Grid Stack"
        
        view.addSubview(gridStack)
        gridStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            gridStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            gridStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            
            gridStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            gridStack.heightAnchor.constraint(equalTo: gridStack.widthAnchor)
            
        ])
        
    }


}

