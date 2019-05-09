# UIView-Animation

**@IBOutlet weak var animationView: UIView!**

**var viewAnimation: ViewAnimation!**

*override func viewDidLoad() {*

  *super.viewDidLoad()*
  
        
  *let screenBounds: CGRect = self.view.bounds*
  
  **viewAnimation = ViewAnimation(animationStyle: .inFromLeftToRight, view: animationView, bounds: screenBounds)**
  
  **viewAnimation.animateView(duration: 0.5, delay: 0, withSpringAnimation: false)**
  
*}*
