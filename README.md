# UIView-Animation

```swift
@IBOutlet weak var customView: UIView!

var viewAnimation: ViewAnimation!

override func viewDidLoad() {
  super.viewDidLoad()
  
  let screenBounds: CGRect = self.view.bounds
  
  //init ViewAnimation
  viewAnimation = ViewAnimation(animationStyle: .inFromLeftToRight, view: customView, bounds: screenBounds)
  
  //animate
  viewAnimation.animateView(duration: 0.5, delay: 0, withSpringAnimation: false)
}
```

# UITableView-Animation

```swift
var tableViewAnimation: TableViewAnimation!

@IBOutlet weak var tableView: UITableView!

override func viewDidLoad() {
  super.viewDidLoad()
  
  //init tableViewAnimation
  tableViewAnimation = TableViewAnimation(animationStyle: .fromRightToLeft, tableView: tableView, bounds: self.view.bounds)
}

override func viewWillAppear(_ animated: Bool) {
  super.viewWillAppear(animated)
        
  //animate
  tableViewAnimation.animateView(duration: 1.5, delay: 0.07, withSpringAnimation: true)
}
```
