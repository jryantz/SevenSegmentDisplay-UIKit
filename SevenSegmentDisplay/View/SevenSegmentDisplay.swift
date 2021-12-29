//
//  SevenSegmentDisplay.swift
//  SevenSegmentDisplay
//
//  Created by Jon Yantz on 12/28/21.
//

import UIKit

class SevenSegmentDisplay: BaseView {
    
    fileprivate let hundreds: SevenSegmentNumber = SevenSegmentNumber()
    fileprivate let tens: SevenSegmentNumber = SevenSegmentNumber()
    fileprivate let ones: SevenSegmentNumber = SevenSegmentNumber()
    
    override func setupViews() {
        
        super.setupViews()
        
        addSubview(tens)
        tens.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tens.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tens.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        tens.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/3, constant: -8).isActive = true
        
        addSubview(hundreds)
        hundreds.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        hundreds.topAnchor.constraint(equalTo: topAnchor).isActive = true
        hundreds.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        hundreds.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/3, constant: -8).isActive = true
        
        addSubview(ones)
        ones.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        ones.topAnchor.constraint(equalTo: topAnchor).isActive = true
        ones.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        ones.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/3, constant: -8).isActive = true
        
    }
    
    /// Sets the display to the given number.
    /// - Parameter value: The number to be shown on the display.
    func setValue(_ value: Int) {
        
        if value > 999 || value < 0 {
            return
        }
        
        let str = "\(value)"
        switch str.count {
        case 1:
            hundreds.setValue(0)
            tens.setValue(0)
            ones.setValue(Int(String(str[str.index(str.startIndex, offsetBy: 0)]))!)
        case 2:
            hundreds.setValue(0)
            tens.setValue(Int(String(str[str.index(str.startIndex, offsetBy: 0)]))!)
            ones.setValue(Int(String(str[str.index(str.startIndex, offsetBy: 1)]))!)
        case 3:
            hundreds.setValue(Int(String(str[str.index(str.startIndex, offsetBy: 0)]))!)
            tens.setValue(Int(String(str[str.index(str.startIndex, offsetBy: 1)]))!)
            ones.setValue(Int(String(str[str.index(str.startIndex, offsetBy: 2)]))!)
        default:
            break
        }
        
    }
    
    /// Resets the display to 000.
    private func reset() {
        
        hundreds.setValue(0)
        tens.setValue(0)
        ones.setValue(0)
        
    }
    
}
