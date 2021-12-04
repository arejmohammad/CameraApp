
import UIKit
import Lottie

class LaunshViewController: UIViewController {
    
    let start = UIButton (frame: CGRect(x: 70, y: 620, width: 250, height: 40))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configureAnimation()
        
        start.setTitle("Start", for: .normal)
        start.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        start.layer.cornerRadius = start.frame.height/2
        start.addTarget(self, action: #selector (Start) , for: .touchDown)
        view.addSubview(start)
        NotificationCenter.default.addObserver(self, selector: #selector(self.authenticateUser), name: UIApplication.didFinishLaunchingNotification, object: nil)
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
       vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    @objc func authenticateUser() {
//        (UIApplication.shared.delegate as! LoginVC)
        let vc = LoginVC()
       vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}

