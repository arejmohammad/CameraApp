
import UIKit

class SignUp: UIViewController {
    
    let stackView = UIStackView()
    
    let titleL = UILabel()
    let usenameL = UILabel()
    let passwordL = UILabel()
    let confirmPasswordL = UILabel()
    
    var nameT = UITextField()
    let passwordT = UITextField()
    let confirmPasswordT = UITextField()
    
    let check1 = UIButton()
    let label1 = UILabel()
    
    let stackView2 = UIStackView()
    let SignUpBtn = UIButton()
    let CancelBtn = UIButton()
    
    var checkButtonState = false
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        let width = view.frame.width-60
        let height = view.frame.height-180
        var incrementYPoint = 30.0
        
        
        //Hide Keyboard
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        
        //StackView
        stackView.axis = .vertical
        stackView.frame = CGRect(x: 30, y: 80, width: width, height: height)
        
        
        //Title
        titleL.text = "New Signup"
        titleL.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/10)
        incrementYPoint += titleL.frame.height
        incrementYPoint += 100
        titleL.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        titleL.font = UIFont.systemFont(ofSize: 26)
        
        
        //UserName
        usenameL.text = "Your Name"
        usenameL.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        usenameL.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        incrementYPoint += usenameL.frame.height
        usenameL.font = UIFont.systemFont(ofSize: 16)
        
        nameT.borderStyle = .roundedRect
        nameT.placeholder = "Your Name"
        nameT.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        incrementYPoint += nameT.frame.height
        incrementYPoint += 20
        
        
        //Password
        passwordL.text = "Your Password"
        passwordL.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        passwordL.font = UIFont.systemFont(ofSize: 16)
        passwordL.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        incrementYPoint += passwordL.frame.height
        
        passwordT.borderStyle = .roundedRect
        passwordT.placeholder = "Password"
        passwordT.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        passwordT.isSecureTextEntry = true
        incrementYPoint += passwordT.frame.height
        incrementYPoint += 20
        
        //Confirm Password
        confirmPasswordL.text = "Re-Enter Your Password"
        confirmPasswordL.font = UIFont.systemFont(ofSize: 16)
        confirmPasswordL.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        confirmPasswordL.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        incrementYPoint += confirmPasswordL.frame.height
        
        confirmPasswordT.borderStyle = .roundedRect
        confirmPasswordT.placeholder = "Password"
        confirmPasswordT.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        confirmPasswordT.isSecureTextEntry = true
        incrementYPoint += confirmPasswordT.frame.height
        incrementYPoint += 100
        
        
        //Agree Check
        check1.setImage(UIImage(systemName: "squareshape"), for: .normal)
        check1.frame = CGRect(x: 0, y: incrementYPoint+5, width: 30, height: 30)
        check1.addTarget(self, action: #selector (checking), for: .touchDown)
        check1.tintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        label1.text = "I agree to Moments App Terms of service and Privacy policy."
        label1.numberOfLines = 2
        label1.frame = CGRect(x: check1.frame.width+5.0, y: incrementYPoint, width: width-check1.frame.width-5, height: height/20)
        incrementYPoint += label1.frame.height
        incrementYPoint += 20
        label1.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label1.font = .systemFont(ofSize: 13)
        
        
        //StackView2
        stackView2.axis = .horizontal
        stackView2.distribution = .fillEqually
        stackView2.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/20)
        
        
        //SignUp Butn
        SignUpBtn.backgroundColor = .black
        SignUpBtn.setTitle("SignUp", for: .normal)
        SignUpBtn.addTarget(self, action: #selector(SignUpButtonTapped), for: .touchDown)
        SignUpBtn.titleLabel?.textColor = .white
        SignUpBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        SignUpBtn.titleLabel?.textAlignment = .center
        SignUpBtn.frame = CGRect(x: 10, y: 0 ,width: width/2-10, height: height/16)
        SignUpBtn.layer.cornerRadius = SignUpBtn.frame.height/2
        
        
        //Canel Butn
        CancelBtn.backgroundColor = .black
        CancelBtn.setTitle("Cancel", for: .normal)
        CancelBtn.addTarget(self, action: #selector(Cancel), for: .touchDown)
        CancelBtn.titleLabel?.textColor = .white
        CancelBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        CancelBtn.titleLabel?.textAlignment = .center
        CancelBtn.frame = CGRect(x: SignUpBtn.frame.width+20.0, y: 0 ,width: width/2-20, height: height/16)
        CancelBtn.layer.cornerRadius = SignUpBtn.frame.height/2
        
        
        //Adding SubViews
        view.addSubview(stackView)
        stackView.addSubview(titleL)
        stackView.addSubview(usenameL)
        stackView.addSubview(passwordL)
        stackView.addSubview(confirmPasswordL)
        stackView.addSubview(nameT)
        stackView.addSubview(passwordT)
        stackView.addSubview(confirmPasswordT)
        stackView.addSubview(check1)
        stackView.addSubview(label1)
        stackView.addSubview(stackView2)
        stackView2.addSubview(SignUpBtn)
        stackView2.addSubview(CancelBtn)
        
    }
    
    
    @objc func checking() {

        if checkButtonState {
            check1.setImage(UIImage(systemName: "squareshape"), for: .normal)
            checkButtonState = false
        } else {
            check1.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
            checkButtonState = true
        }
    }
    
    @objc func SignUpButtonTapped() {
        let vc = LoginVC()
        if !nameT.text!.isEmpty && !passwordT.text!.isEmpty {
            
            if passwordT.text == confirmPasswordT.text {
                
                if checkButtonState {
                    
                    UserDefaults.standard.set(nameT.text, forKey: "name")
                    UserDefaults.standard.set(passwordT.text, forKey: "password") // save user pass and name in userdefaults ;).
                    vc.modalPresentationStyle = .fullScreen
                    present(vc, animated: true, completion: nil)
                    
                } else {
                    
                    let dialogMessage = UIAlertController(title: "Ops!", message: "You should agree term of services and privacy to sign up!", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                        print("Ok to checkBtn")
                     })
                    dialogMessage.addAction(ok)
                    self.present(dialogMessage, animated: true, completion: nil)
                }
                
            } else {

                let dialogMessage = UIAlertController(title: "Ops!", message: "Your password and passweord confirmation doesn't match!", preferredStyle: .alert)
                let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                    print("Ok to match pass with confirmation")
                 })
                dialogMessage.addAction(ok)
                self.present(dialogMessage, animated: true, completion: nil)
            }
            
        } else {

            let dialogMessage = UIAlertController(title: "Ops!", message: "Your name and password shouldn't be Empty!", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok to name or pass not empty")
             })
            dialogMessage.addAction(ok)
            self.present(dialogMessage, animated: true, completion: nil)
        }
    }
    
    @objc func Cancel() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}
