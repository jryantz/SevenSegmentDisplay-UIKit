//
//  Segment.swift
//  SevenSegmentDisplay
//
//  Created by Jon Yantz on 12/30/21.
//

import UIKit

class Segment: UIView {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        backgroundColor = UIColor(named: "displayOff")
        roundCorners(.all, radius: 8)
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
