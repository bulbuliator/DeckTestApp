//
//  ViewController.swift
//  DeckTestApp
//
//  Created by Bulbuliator on 14.02.16.
//  Copyright © 2016 BulbuliatorInc. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {
    
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var recievedString: String?
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let str = recievedString {
            myLabel.text = str
        }

    }
    
    override func viewDidLayoutSubviews() {
        makeTopBottomGradient()
    }
    
    func makeTopBottomGradient() {
        
        if let containerView = myTextView.superview {
            
            let transparent = UIColor(white: 0, alpha: 0).CGColor
            let opaque = UIColor(white: 0, alpha: 1).CGColor
            
            let maskLayer = CALayer()
            maskLayer.frame = containerView.bounds
            
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = CGRect(x:containerView.bounds.origin.x, y:0, width:containerView.bounds.size.width, height:containerView.bounds.size.height)
            gradientLayer.colors = [transparent, opaque, opaque, transparent]
            gradientLayer.locations = [0.0, 0.1, 0.85, 1.0]
            
            maskLayer.addSublayer(gradientLayer)
            containerView.layer.mask = maskLayer
        }
    }
}
