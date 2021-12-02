
import UIKit

class LoginVC: UIViewController {
    
    
    let welcome = UILabel(frame: CGRect(x: 45, y: 100, width: 300, height: 50))
    let Image = UIImageView(frame: CGRect(x: 70, y: 150, width: 250, height: 250))
    let nameL = UILabel(frame: CGRect(x: 70, y: 400, width: 250, height: 50))
    let name = UITextField(frame: CGRect(x: 70, y: 450, width: 270, height: 40))
    let passL = UILabel(frame: CGRect(x: 70, y: 500, width: 250, height: 50))
    let password = UITextField(frame: CGRect(x: 70, y: 550, width: 270, height: 40))
    let login = UIButton (frame: CGRect(x: 70, y: 620, width: 250, height: 40))
    let signUpLab = UILabel(frame: CGRect(x: 70, y: 690, width: 250, height: 50))
    let signUpBut = UIButton (frame: CGRect(x: 230, y: 690, width: 70, height: 50))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        
        name.backgroundColor = .white
        name.placeholder="username"
        name.layer.cornerRadius = 10
        name.borderStyle = .roundedRect
        
        
        password.backgroundColor = .white
        password.placeholder="password"
        password.layer.cornerRadius = 10
        password.borderStyle = .roundedRect
        password.isSecureTextEntry = true
        
        
        login.setTitle("login", for: .normal)
        login.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        login.layer.cornerRadius = login.frame.height/2

        login.addTarget(self, action: #selector (moveToNextVC) , for: .touchDown)
        
        
        welcome.text = "Welcome to Camera App"
        welcome.textAlignment = .center
        welcome.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        welcome.font = .boldSystemFont(ofSize: 25)
        
        Image.image = UIImage(named: "3")
        
        nameL.text = "UserName"
        passL.text = "Password"
        nameL.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        passL.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        signUpLab.text = "You Don't Have an Account ?"
        signUpLab.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        signUpLab.font = .systemFont(ofSize: 12)
        
        signUpBut.setTitle("SignUp", for: .normal)
        signUpBut.titleLabel?.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        signUpBut.titleLabel?.font = .systemFont(ofSize: 12)
       
        
        
        view.addSubview(welcome)
        view.addSubview(name)
        view.addSubview(password)
        view.addSubview(login)
        view.addSubview(Image)
        view.addSubview(nameL)
        view.addSubview(passL)
        view.addSubview(signUpLab)
        view.addSubview(signUpBut)
        
    }
    
    @objc  func moveToNextVC(){
        let vc = TodaysPhotoVC()
        //        vc.label2.text = "Hello \(name.text!)"
        self.present(vc, animated: true, completion: nil)
    }
    
    
}
extension UITextField {
    func clear(){
        self.text = ""
    }
}

