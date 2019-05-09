//
//  ViewAnimation.swift
//  UIView-Animation
//
//  Created by Furkan Kurnaz on 9.05.2019.
//  Copyright © 2019 Furkan Kurnaz. All rights reserved.
//

import Foundation

import UIKit

enum AnimationStyle {
    case inFromLeftToRight
    case inFromRightToLeft
    case inFromTopToBottom
    case inFromBottomToTop
    
    case outFromLeftToRight
    case outFromRightToLeft
    case outFromTopToBottom
    case outFromBottomToTop
    
    case scale(scaleX: CGFloat, scaleY: CGFloat)
    
    case rotate(angle: CGFloat)
    
    case fadeIn
    case fadeOut
}

class ViewAnimation {
    var animationStyle: AnimationStyle
    var view: UIView
    var bounds: CGRect
    
    init(animationStyle: AnimationStyle, view: UIView, bounds: CGRect) {
        self.animationStyle = animationStyle
        self.view = view
        self.bounds = bounds
        
        switch animationStyle {
        case .inFromLeftToRight:
            view.transform = CGAffineTransform(translationX: -bounds.width, y: 0)
            
        case .inFromRightToLeft:
            view.transform = CGAffineTransform(translationX: bounds.width, y: 0)
            
        case .inFromTopToBottom:
            view.transform = CGAffineTransform(translationX: 0, y: -bounds.height)
            
        case .inFromBottomToTop:
            view.transform = CGAffineTransform(translationX: 0, y: bounds.height)
            
        case .scale:
            view.transform = CGAffineTransform(scaleX: 0, y: 0)
            
        case .fadeIn:
            view.alpha = 0
            
        case .fadeOut:
            view.alpha = 1
            
        default: break
        }
    }
    
    func animateView(duration: Double) {
        UIView.animate(withDuration: duration) {
            switch self.animationStyle {
            case .inFromLeftToRight,
                 .inFromRightToLeft,
                 .inFromBottomToTop,
                 .inFromTopToBottom:
                self.view.transform = .identity
                
            case .outFromLeftToRight:
                self.view.transform = CGAffineTransform(translationX: self.bounds.width, y: 0)
                
            case .outFromRightToLeft:
                self.view.transform = CGAffineTransform(translationX: -self.bounds.width, y: 0)
                
            case .outFromTopToBottom:
                self.view.transform = CGAffineTransform(translationX: 0, y: self.bounds.height)
                
            case .outFromBottomToTop:
                self.view.transform = CGAffineTransform(translationX: 0, y: -self.bounds.height)
                
            case .scale(let scaleX, let scaleY):
                self.view.transform = CGAffineTransform(scaleX: scaleX, y: scaleY)
                
            case .rotate(let angle):
                self.view.transform = CGAffineTransform(rotationAngle: angle)
                
            case .fadeIn:
                self.view.alpha = 1
                
            case .fadeOut:
                self.view.alpha = 0
            }
        }
    }
    
}
