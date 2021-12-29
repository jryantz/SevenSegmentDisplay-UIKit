//
//  SevenSegmentNumber.swift
//  SevenSegmentDisplay
//
//  Created by Jon Yantz on 12/28/21.
//

import UIKit

class SevenSegmentNumber: BaseView {
    
    fileprivate let a: Segment = Segment()
    fileprivate let b: Segment = Segment()
    fileprivate let c: Segment = Segment()
    fileprivate let d: Segment = Segment()
    fileprivate let e: Segment = Segment()
    fileprivate let f: Segment = Segment()
    fileprivate let g: Segment = Segment()
    
    override func setupViews() {
        
        super.setupViews()
        
        let thickness: CGFloat = 7
        
        // Top
        addSubview(a)
        a.topAnchor.constraint(equalTo: topAnchor).isActive = true
        a.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6).isActive = true
        a.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6).isActive = true
        a.heightAnchor.constraint(equalToConstant: thickness).isActive = true
        
        // Top Right
        addSubview(b)
        b.topAnchor.constraint(equalTo: topAnchor, constant: 4).isActive = true
        b.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        b.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2, constant: -4).isActive = true
        b.widthAnchor.constraint(equalToConstant: thickness).isActive = true
        
        // Bottom Right
        addSubview(c)
        c.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4).isActive = true
        c.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        c.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2, constant: -4).isActive = true
        c.widthAnchor.constraint(equalToConstant: thickness).isActive = true
        
        // Bottom
        addSubview(d)
        d.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        d.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6).isActive = true
        d.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6).isActive = true
        d.heightAnchor.constraint(equalToConstant: thickness).isActive = true
        
        // Bottom Left
        addSubview(e)
        e.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4).isActive = true
        e.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        e.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2, constant: -4).isActive = true
        e.widthAnchor.constraint(equalToConstant: thickness).isActive = true
        
        // Top Left
        addSubview(f)
        f.topAnchor.constraint(equalTo: topAnchor, constant: 4).isActive = true
        f.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        f.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2, constant: -4).isActive = true
        f.widthAnchor.constraint(equalToConstant: thickness).isActive = true
        
        // Middle
        addSubview(g)
        g.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        g.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6).isActive = true
        g.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6).isActive = true
        g.heightAnchor.constraint(equalToConstant: thickness).isActive = true
        
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    /// Sets the display to the given number.
    /// - Parameter value: The number to be shown on the display.
    func setValue(_ value: Int) {
        
        reset()
        switch value {
        case 0:
            zero()
        case 1:
            one()
        case 2:
            two()
        case 3:
            three()
        case 4:
            four()
        case 5:
            five()
        case 6:
            six()
        case 7:
            seven()
        case 8:
            eight()
        case 9:
            nine()
        default:
            break
        }
        
    }
    
    private func reset() {
        a.backgroundColor = UIColor(named: "displayOff")
        b.backgroundColor = UIColor(named: "displayOff")
        c.backgroundColor = UIColor(named: "displayOff")
        d.backgroundColor = UIColor(named: "displayOff")
        e.backgroundColor = UIColor(named: "displayOff")
        f.backgroundColor = UIColor(named: "displayOff")
        g.backgroundColor = UIColor(named: "displayOff")
    }
    
    private func zero() {
        a.backgroundColor = UIColor(named: "displayOn")
        b.backgroundColor = UIColor(named: "displayOn")
        c.backgroundColor = UIColor(named: "displayOn")
        d.backgroundColor = UIColor(named: "displayOn")
        e.backgroundColor = UIColor(named: "displayOn")
        f.backgroundColor = UIColor(named: "displayOn")
    }
    
    private func one() {
        b.backgroundColor = UIColor(named: "displayOn")
        c.backgroundColor = UIColor(named: "displayOn")
    }
    
    private func two() {
        a.backgroundColor = UIColor(named: "displayOn")
        b.backgroundColor = UIColor(named: "displayOn")
        d.backgroundColor = UIColor(named: "displayOn")
        e.backgroundColor = UIColor(named: "displayOn")
        g.backgroundColor = UIColor(named: "displayOn")
    }
    
    private func three() {
        a.backgroundColor = UIColor(named: "displayOn")
        b.backgroundColor = UIColor(named: "displayOn")
        c.backgroundColor = UIColor(named: "displayOn")
        d.backgroundColor = UIColor(named: "displayOn")
        g.backgroundColor = UIColor(named: "displayOn")
    }
    
    private func four() {
        b.backgroundColor = UIColor(named: "displayOn")
        c.backgroundColor = UIColor(named: "displayOn")
        f.backgroundColor = UIColor(named: "displayOn")
        g.backgroundColor = UIColor(named: "displayOn")
    }
    
    private func five() {
        a.backgroundColor = UIColor(named: "displayOn")
        c.backgroundColor = UIColor(named: "displayOn")
        d.backgroundColor = UIColor(named: "displayOn")
        f.backgroundColor = UIColor(named: "displayOn")
        g.backgroundColor = UIColor(named: "displayOn")
    }
    
    private func six() {
        a.backgroundColor = UIColor(named: "displayOn")
        c.backgroundColor = UIColor(named: "displayOn")
        d.backgroundColor = UIColor(named: "displayOn")
        e.backgroundColor = UIColor(named: "displayOn")
        f.backgroundColor = UIColor(named: "displayOn")
        g.backgroundColor = UIColor(named: "displayOn")
    }
    
    private func seven() {
        a.backgroundColor = UIColor(named: "displayOn")
        b.backgroundColor = UIColor(named: "displayOn")
        c.backgroundColor = UIColor(named: "displayOn")
    }
    
    private func eight() {
        a.backgroundColor = UIColor(named: "displayOn")
        b.backgroundColor = UIColor(named: "displayOn")
        c.backgroundColor = UIColor(named: "displayOn")
        d.backgroundColor = UIColor(named: "displayOn")
        e.backgroundColor = UIColor(named: "displayOn")
        f.backgroundColor = UIColor(named: "displayOn")
        g.backgroundColor = UIColor(named: "displayOn")
    }
    
    private func nine() {
        a.backgroundColor = UIColor(named: "displayOn")
        b.backgroundColor = UIColor(named: "displayOn")
        c.backgroundColor = UIColor(named: "displayOn")
        d.backgroundColor = UIColor(named: "displayOn")
        f.backgroundColor = UIColor(named: "displayOn")
        g.backgroundColor = UIColor(named: "displayOn")
    }
    
}

fileprivate class Segment: UIView {
    
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
