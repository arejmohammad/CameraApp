
import UIKit

class TodaysPhotoVC: UIViewController {
    
    let stackView = UIStackView()
    let label = UILabel()
    let imageView = UIImageView()
    let button = UIButton()
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.width-40
        let height = view.frame.height-40
        var incrementYPoint = 60.0
        
        //Stack View
        view.addSubview(stackView)
        stackView.frame = CGRect(x: 20, y: 20, width: width, height: height)
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        
        
        //Label
        stackView.addSubview(label)
        label.text = "Hello User Name"
        
        label.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/8)
        incrementYPoint += label.frame.height + 40.0
        label.font = UIFont.systemFont(ofSize: 26)
        label.textColor = .black
        label.textAlignment = .center
        
        //ImageView
        stackView.addSubview(imageView)
        imageView.image = UIImage(named: "placeholder2")
        imageView.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height-height/2.5)
        incrementYPoint += imageView.frame.height + 40.0
        imageView.contentMode = .scaleAspectFit
        
        //Button
        stackView.addSubview(button)
        button.backgroundColor = .black
        button.setTitle("Take Picture!", for: .normal)
        button.addTarget(self, action: #selector(OpenCamera), for: .touchDown)
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        button.titleLabel?.textAlignment = .center
        button.frame = CGRect(x: 0, y: incrementYPoint ,width: width, height: height/16)
        incrementYPoint += button.frame.height + 40.0
        button.layer.cornerRadius = button.frame.height/2
        
        
        view.backgroundColor = .white

    }
    
    
    @objc func OpenCamera() {
        print("Camera Opend :)")
    }
    


}
