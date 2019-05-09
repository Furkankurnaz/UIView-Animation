# UIView-Animation

@IBOutlet weak var animationView: UIView!

var viewAnimation: ViewAnimation!


//...


override func viewDidLoad() {

  super.viewDidLoad()
  
        
  let screenBounds: CGRect = self.view.bounds
  
        
  //init view animation
  
  //ViewAnimation(animationStyle: AnimationSyle, view: UIView, bounds: CGRect)
  
  viewAnimation = ViewAnimation(animationStyle: .inFromLeftToRight, view: animationView, bounds: screenBounds)
  
  viewAnimation.animateView(duration: 0.5, delay: 0, withSpringAnimation: false)
  
}


//...
