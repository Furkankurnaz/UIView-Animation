//
//  TableViewController.swift
//  UIView-Animation
//
//  Created by Furkan Kurnaz on 22.05.2019.
//  Copyright © 2019 Furkan Kurnaz. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    var tableViewAnimation: TableViewAnimation!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewAnimation = TableViewAnimation(animationStyle: .fromRightToLeft, tableView: tableView, bounds: self.view.bounds)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableViewAnimation.animateView(duration: 1.5, delay: 0.07, withSpringAnimation: true)
    }

}

extension TableViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
}
