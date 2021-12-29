//
//  BaseView.swift
//  SevenSegmentDisplay
//
//  Created by Jon Yantz on 12/28/21.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupViews()
        
    }
    
    func setupViews() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
