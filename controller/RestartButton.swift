//
//  RestartButton.swift
//  Ring of Fire
//
//  Created by Jakub Gawecki on 15/11/2020.
//

import UIKit

class RestartButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(backgroundColor: UIColor, text: String, ofsize: CGFloat) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(text, for: .normal)
        self.titleLabel?.font = .systemFont(ofSize: ofsize, weight: .bold)
        configure()
    }
    
    
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 8
        setTitleColor(.white, for: .normal)
    }
}
