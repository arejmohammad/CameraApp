
import UIKit
import Lottie

class LaunshViewController: UIViewController {
    
    let start = UIButton (frame: CGRect(x: 70, y: 620, width: 250, height: 40))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configureAnimation()
        
        start.setTitle("Start", for: .normal)
        start.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        start.layer.cornerRadius = start.frame.height/2
        start.addTarget(self, action: #selector (Start) , for: .touchDown)
        view.addSubview(start)
    }
    
    func configureAnimation(){
        let animation = Animation.named("camera")
        let animationView = AnimationView(animation:animation)
        animationView.contentMode = .scaleAspectFill
        animationView.frame = CGRect(x: 0, y: 0, width: 275, height: 275)
        animationView.center = view.center
        view.addSubview(animationView)
        animationView.play()
        animationView.loopMode = .playOnce
        animationView.animationSpeed = 1
    }

   @objc func Start(){
        let vc = LoginVC()
        self.present(vc, animated: true, completion: nil)
    }

}

