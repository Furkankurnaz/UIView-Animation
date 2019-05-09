//
//  ViewController.swift
//  UIView-Animation
//
//  Created by Furkan Kurnaz on 9.05.2019.
//  Copyright © 2019 Furkan Kurnaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: UIView!
    
    var viewAnimation: ViewAnimation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenBounds: CGRect = self.view.bounds
        
        viewAnimation = ViewAnimation(animationStyle: .scaleToZero, view: animationView, bounds: screenBounds)
    }

    @IBAction func animateButtonTapped(_ sender: Any) {
        viewAnimation.animateView(duration: 0.5)
    }
    
}

