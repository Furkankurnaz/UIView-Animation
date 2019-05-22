//
//  TableViewAnimation.swift
//  UIView-Animation
//
//  Created by Furkan Kurnaz on 22.05.2019.
//  Copyright © 2019 Furkan Kurnaz. All rights reserved.
//

import UIKit

enum TableAnimationStyle {
    case fromLeftToRight
    case fromRightToLeft
    case fromTopToBottom
    case fromBottomToTop
    
    case fadeIn
}

class TableViewAnimation {
    private var animationStyle: TableAnimationStyle
    private var bounds: CGRect
    private var tableView: UITableView
    
    init(animationStyle: TableAnimationStyle, tableView: UITableView, bounds: CGRect) {
        self.animationStyle = animationStyle
        self.bounds = bounds
        self.tableView = tableView
        
        self.tableView.reloadData()
        
        let cells = tableView.visibleCells
        
        for cell in cells {
            switch animationStyle {
            case .fromLeftToRight:
                cell.transform = CGAffineTransform(translationX: -bounds.width, y: 0)
                
            case .fromRightToLeft:
                cell.transform = CGAffineTransform(translationX: bounds.width, y: 0)
                
            case .fromTopToBottom:
                cell.transform = CGAffineTransform(translationX: 0, y: -bounds.height)
                
            case .fromBottomToTop:
                cell.transform = CGAffineTransform(translationX: 0, y: bounds.height)
                
            case .fadeIn:
                cell.alpha = 0
            }
        }
    }
    
    func animateView(duration: Double, delay: Double, withSpringAnimation: Bool) {
        let cells = tableView.visibleCells
        
        var counter: Double = 0
        
        if withSpringAnimation {
            for cell in cells {
                UIView.animate(withDuration: duration,
                               delay: counter * delay,
                               usingSpringWithDamping: 0.75,
                               initialSpringVelocity: 0,
                               options: .curveEaseInOut,
                               animations: {
                                self.applyAnimation(cell: cell)
                               },
                               completion: nil)
                
                counter += 1
            }
        } else {
            for cell in cells {
                UIView.animate(withDuration: duration,
                               delay: counter * delay,
                               options: .curveEaseInOut,
                               animations: {
                                self.applyAnimation(cell: cell)
                               },
                               completion: nil)
                
                counter += 1
            }
        }
        
    }
    
    private func applyAnimation(cell: UITableViewCell) {
        switch self.animationStyle {
        case .fromLeftToRight,
             .fromRightToLeft,
             .fromBottomToTop,
             .fromTopToBottom:
            cell.transform = .identity
            
        case .fadeIn:
            cell.alpha = 1
        }
    }
    
}

