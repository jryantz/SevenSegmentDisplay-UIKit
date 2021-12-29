//
//  ViewController.swift
//  SevenSegmentDisplay
//
//  Created by Jon Yantz on 12/28/21.
//

import UIKit

class ViewController: UIViewController {

    let ssd: SevenSegmentDisplay = {
        let view = SevenSegmentDisplay()
        
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let displayHeight: CGFloat = 85 * 13/16
        let displayWidth: CGFloat = 50 * 13/16 * 3 + 16
        
        view.addSubview(ssd)
        NSLayoutConstraint.activate([
            ssd.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ssd.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            ssd.heightAnchor.constraint(equalToConstant: displayHeight),
            ssd.widthAnchor.constraint(equalToConstant: displayWidth),
        ])
        
        ssd.setValue(905)
        
    }

}
