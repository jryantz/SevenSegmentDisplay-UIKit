//
//  SevenSegmentNumber.swift
//  SevenSegmentDisplay
//
//  Created by Jon Yantz on 12/28/21.
//

import UIKit

class SevenSegmentNumber: UIView {
    
    private let a: Segment = Segment()
    private let b: Segment = Segment()
    private let c: Segment = Segment()
    private let d: Segment = Segment()
    private let e: Segment = Segment()
    private let f: Segment = Segment()
    private let g: Segment = Segment()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
        let thickness: CGFloat = 7
        
        // Top
        addSubview(a)
        NSLayoutConstraint.activate([
            a.topAnchor.constraint(equalTo: topAnchor),
            a.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6),
            a.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6),
            a.heightAnchor.constraint(equalToConstant: thickness)
        ])
        
        // Top Right
        addSubview(b)
        NSLayoutConstraint.activate([
            b.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            b.trailingAnchor.constraint(equalTo: trailingAnchor),
            b.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2, constant: -4),
            b.widthAnchor.constraint(equalToConstant: thickness)
        ])
        
        // Bottom Right
        addSubview(c)
        NSLayoutConstraint.activate([
            c.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4),
            c.trailingAnchor.constraint(equalTo: trailingAnchor),
            c.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2, constant: -4),
            c.widthAnchor.constraint(equalToConstant: thickness)
        ])
        
        // Bottom
        addSubview(d)
        NSLayoutConstraint.activate([
            d.bottomAnchor.constraint(equalTo: bottomAnchor),
            d.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6),
            d.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6),
            d.heightAnchor.constraint(equalToConstant: thickness)
        ])
        
        // Bottom Left
        addSubview(e)
        NSLayoutConstraint.activate([
            e.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4),
            e.leadingAnchor.constraint(equalTo: leadingAnchor),
            e.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2, constant: -4),
            e.widthAnchor.constraint(equalToConstant: thickness)
        ])
        
        // Top Left
        addSubview(f)
        NSLayoutConstraint.activate([
            f.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            f.leadingAnchor.constraint(equalTo: leadingAnchor),
            f.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2, constant: -4),
            f.widthAnchor.constraint(equalToConstant: thickness)
        ])
        
        // Middle
        addSubview(g)
        NSLayoutConstraint.activate([
            g.centerYAnchor.constraint(equalTo: centerYAnchor),
            g.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6),
            g.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6),
            g.heightAnchor.constraint(equalToConstant: thickness)
        ])
        
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    /// Sets the display to the given number.
    /// - Parameter value: The number to be shown on the display.
    func setValue(_ value: Int) {
        
        reset()
        switch value {
        case 0: zero()
        case 1: one()
        case 2: two()
        case 3: three()
        case 4: four()
        case 5: five()
        case 6: six()
        case 7: seven()
        case 8: eight()
        case 9: nine()
        default: break
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
