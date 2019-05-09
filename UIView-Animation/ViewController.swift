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
        
        //init view animation
        //ViewAnimation(animationStyle: AnimationSyle, view: UIView, bounds: CGRect)
        viewAnimation = ViewAnimation(animationStyle: .inFromLeftToRight, view: animationView, bounds: screenBounds)
    }

    @IBAction func animateButtonTapped(_ sender: Any) {
        
        //apply animation by animateView function
        viewAnimation.animateView(duration: 0.5, delay: 0, withSpringAnimation: false)
    }
    
}

