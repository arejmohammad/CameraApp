import UIKit
import Lottie

class LaunshViewController: UIViewController {
    
    let startBtn = UIButton ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let width = view.frame.width-60
        let height = view.frame.height-200
        
        configureAnimation()
        
        
        
        view.addSubview(startBtn)
        startBtn.backgroundColor = .black
        startBtn.setTitle("Start", for: .normal)
        startBtn.addTarget(self, action: #selector(Start), for: .touchDown)
        startBtn.titleLabel?.textColor = .white
        startBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        startBtn.titleLabel?.textAlignment = .center
        startBtn.frame = CGRect(x: width-width/1.3, y: height-height/30,width: width-width/4, height: height/18)
        startBtn.layer.cornerRadius = startBtn.frame.height/2
    }
    
    func configureAnimation() {
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
   

   @objc func Start() {
        let vc = LoginVC()
       vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    
}


