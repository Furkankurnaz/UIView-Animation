# UIView-Animation

```
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
