
import UIKit

class SignUp: UIViewController {

    let emailL = UILabel(frame: CGRect(x: 70, y: 50, width: 300, height: 50))
    let usenameL = UILabel(frame: CGRect(x: 70, y: 150, width: 300, height: 50))
    let passwordL = UILabel(frame: CGRect(x: 70, y: 250, width: 300, height: 50))
    let confirmPasswordL = UILabel(frame: CGRect(x: 70, y: 350, width: 300, height: 50))

    var emailT = UITextField(frame: CGRect(x: 70, y: 100, width: 270, height: 40))
    var nameT = UITextField(frame: CGRect(x: 70, y: 200, width: 270, height: 40))
    let passwordT = UITextField(frame: CGRect(x: 70, y: 300, width: 270, height: 40))
    let confirmPasswordT = UITextField(frame: CGRect(x: 70, y: 400, width: 270, height: 40))
    
    let check1 = UIButton (frame: CGRect(x: 20, y: 470, width: 20, height: 20))
    let label1 = UILabel(frame: CGRect(x: 50, y: 470, width: 300, height: 60))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        emailL.text = "Enter your Email :"
        emailL.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        usenameL.text = "Enter your username :"
        usenameL.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        passwordL.text = "Enter your password :"
        passwordL.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        confirmPasswordL.text = "confirm your password :"
        confirmPasswordL.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        emailT.backgroundColor = .white
        emailT.layer.cornerRadius = 10
        emailT.borderStyle = .roundedRect

        
        nameT.backgroundColor = .white
        nameT.layer.cornerRadius = 10
        nameT.borderStyle = .roundedRect

        
        passwordT.backgroundColor = .white
        passwordT.layer.cornerRadius = 10
        passwordT.borderStyle = .roundedRect

        
        confirmPasswordT.backgroundColor = .white
        confirmPasswordT.layer.cornerRadius = 10
        confirmPasswordT.borderStyle = .roundedRect

        check1.setImage(UIImage(named: "squareshape"), for: .normal)
        check1.addTarget(self, action: #selector (checking), for: .touchDown)
        check1.tintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        label1.text = "I agree to MemorieApp Terms of service and Privacy policy"
        label1.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label1.font = .systemFont(ofSize: 13)

        
        view.addSubview(emailL)
        view.addSubview(usenameL)
        view.addSubview(passwordL)
        view.addSubview(confirmPasswordL)
        view.addSubview(emailT)
        view.addSubview(nameT)
        view.addSubview(passwordT)
        view.addSubview(confirmPasswordT)
        view.addSubview(check1)
        view.addSubview(label1)


    }
    @objc func checking(){
        check1.setImage(UIImage(named: "checkmark.square.fill"), for: .normal)
        
    }
    
    
    
}
