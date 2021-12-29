//
//  SevenSegmentDisplay.swift
//  SevenSegmentDisplay
//
//  Created by Jon Yantz on 12/28/21.
//

import UIKit

class SevenSegmentDisplay: UIView {
    
    fileprivate let hundreds: SevenSegmentNumber = SevenSegmentNumber()
    fileprivate let tens: SevenSegmentNumber = SevenSegmentNumber()
    fileprivate let ones: SevenSegmentNumber = SevenSegmentNumber()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
        addSubview(hundreds)
        addSubview(tens)
        addSubview(ones)
        
        NSLayoutConstraint.activate([
            hundreds.leadingAnchor.constraint(equalTo: leadingAnchor),
            hundreds.topAnchor.constraint(equalTo: topAnchor),
            hundreds.bottomAnchor.constraint(equalTo: bottomAnchor),
            hundreds.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/3, constant: -8),
            tens.centerXAnchor.constraint(equalTo: centerXAnchor),
            tens.topAnchor.constraint(equalTo: topAnchor),
            tens.bottomAnchor.constraint(equalTo: bottomAnchor),
            tens.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/3, constant: -8),
            ones.trailingAnchor.constraint(equalTo: trailingAnchor),
            ones.topAnchor.constraint(equalTo: topAnchor),
            ones.bottomAnchor.constraint(equalTo: bottomAnchor),
            ones.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/3, constant: -8)
        ])
                
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
