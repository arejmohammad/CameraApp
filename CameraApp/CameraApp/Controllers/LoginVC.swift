
import UIKit

class LoginVC: UIViewController {
    
    let stackView = UIStackView()
    
    let welcome = UILabel()
    let image = UIImageView()
    
    let nameL = UILabel()
    var nameT = UITextField()
    
    let passL = UILabel()
    let passT = UITextField()
    
    let loginBtn = UIButton ()
    
    let stackView2 = UIStackView()
    let signUpL = UILabel()
    let signUpBtn = UIButton ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        let width = view.frame.width-60
        let height = view.frame.height-200
        var incrementYPoint = 30.0
        
        
        //Hide Keyboard
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        
        //StackView
        stackView.axis = .vertical
        stackView.frame = CGRect(x: 30, y: 80, width: width, height: height)
        
        
        //Welcome
        welcome.text = "Welcome to Moments" //what do you think about the name?? is this or Memories better?
        welcome.textAlignment = .center
        welcome.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        incrementYPoint += welcome.frame.height
        incrementYPoint += 20
        welcome.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        welcome.font = UIFont.systemFont(ofSize: 26)
        
        
        //Image
        image.image = UIImage(named: "3")
        image.frame = CGRect(x: 40, y: incrementYPoint, width: width-100, height: height/3)
        incrementYPoint += image.frame.height
        incrementYPoint += 20
        image.contentMode = .scaleAspectFill
        
        
        //Name
        nameL.text = "Your Name"
        nameL.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        nameL.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        incrementYPoint += nameL.frame.height
        nameL.font = UIFont.systemFont(ofSize: 16)
        
        nameT.borderStyle = .roundedRect
        nameT.placeholder = "Your Name"
        nameT.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        incrementYPoint += nameT.frame.height
        incrementYPoint += 20
        
        
        //Pass
        passL.text = "Your Password"
        passL.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        passL.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        incrementYPoint += nameL.frame.height
        passL.font = UIFont.systemFont(ofSize: 16)
        
        
        passT.borderStyle = .roundedRect
        passT.placeholder = "Your Password"
        passT.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        passT.isSecureTextEntry = true
        incrementYPoint += nameT.frame.height
        incrementYPoint += 60
        
        
        //loginBtn
        loginBtn.backgroundColor = .black
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.addTarget(self, action: #selector(Login), for: .touchDown)
        loginBtn.titleLabel?.textColor = .white
        loginBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        loginBtn.titleLabel?.textAlignment = .center
        loginBtn.frame = CGRect(x: 10, y: incrementYPoint ,width: width-20, height: height/20)
        incrementYPoint += loginBtn.frame.height
        incrementYPoint += 20
        loginBtn.layer.cornerRadius = loginBtn.frame.height/2
        
        //stackView2
        stackView2.axis = .horizontal
        stackView2.distribution = .fillEqually
        stackView2.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/24)
        
        
        //SignUpL
        signUpL.text = "Don't have an account?"
        signUpL.frame = CGRect(x: 0, y: 0, width: width-width/2, height: stackView2.frame.height)
        signUpL.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        signUpL.font = .systemFont(ofSize: 14)
        signUpL.textAlignment = .right
        
        
        //SignUpBtn
        signUpBtn.setTitle("SignUp for Free", for: .normal)
        signUpBtn.addTarget(self, action: #selector(SignUpBtnTapped), for: .touchDown)
        signUpBtn.frame = CGRect(x: signUpL.frame.width+10.0, y: 0, width: width-signUpL.frame.width-20, height: stackView2.frame.height)
//        signUpBtn.titleLabel?.textColor = .black
//        signUpBtn.tintColor = .black
        signUpBtn.titleLabel?.font = .boldSystemFont(ofSize: 18)
        signUpBtn.titleLabel?.textAlignment = .left
        signUpBtn.setTitleColor(UIColor.black, for: .normal)

        
        //Adding Sub Views
        view.addSubview(stackView)
        stackView.addSubview(welcome)
        stackView.addSubview(image)
        stackView.addSubview(nameL)
        stackView.addSubview(nameT)
        stackView.addSubview(passL)
        stackView.addSubview(passT)
        stackView.addSubview(loginBtn)
        stackView.addSubview(stackView2)
        stackView2.addSubview(signUpL)
        stackView2.addSubview(signUpBtn)
        
    }
    
    @objc func Login() {
        
        let vc = TodaysPhotoVC()
        if UserDefaults.standard.string(forKey: "name") == nameT.text && UserDefaults.standard.string(forKey: "password") == passT.text {
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
            vc.label1.text = "Hello \(nameT.text!)"
        } else {
            nameT.clear()
            passT.clear()
            let dialogMessage = UIAlertController(title: "Ops!", message: "Incorrect Name or Password.", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok to login or signup")
             })
            dialogMessage.addAction(ok)
            self.present(dialogMessage, animated: true, completion: nil)
            vc.modalPresentationStyle = .fullScreen

        }
    }
    
    @objc func SignUpBtnTapped() {
        let vc = SignUp()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true);
        navigationController?.navigationBar.isHidden = true // for navigation bar hide
        UIApplication.shared.isStatusBarHidden = true // for status bar hide
    }
}

extension UITextField {
    func clear(){
        self.text = ""
    }
}
