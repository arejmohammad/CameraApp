
import UIKit

class TodaysPhotoVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //if collectionView is Empty
    let stackView = UIStackView()
    var name = UILabel()
    var label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let stackView2 = UIStackView()
    let cameraBtn = UIButton()
    let albumBtn = UIButton()
    let signOut = UIButton()
    
    
    //if CollectionView not empty and  has items in it.
//    let vc = MyCollectionViewController()
    let image = UIImageView() //img
    let desc = UILabel() //caption
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.width-60
        let height = view.frame.height-250
        var incrementYPoint = 20.0
        
        view.backgroundColor = .white
        
        //Stack View
        stackView.frame = CGRect(x: 30, y: 80, width: width, height: height)
        stackView.axis = .vertical
        
        //signout
        signOut.setTitle("Signout", for: .normal)
        signOut.frame = CGRect(x: 270, y: 0, width: width/5, height: height/20)
        incrementYPoint += signOut.frame.height
        signOut.addTarget(self, action: #selector(signout), for: .touchDown)
        signOut.titleLabel?.font = .boldSystemFont(ofSize: 16)
        signOut.setTitleColor(UIColor.black, for: .normal)
        
        //Label1
        label1.text = "Hello"
        label1.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/10)
        incrementYPoint += label1.frame.height
        label1.font = UIFont.systemFont(ofSize: 26)
        label1.textColor = .black
        
        
        //Label2
        label2.text = "No Moments yet, click on the button below to start"
        label2.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/10)
        incrementYPoint += label2.frame.height
        label2.font = UIFont.systemFont(ofSize: 16)
        label2.numberOfLines = 2
        label2.textColor = .black
        
        
        //ImageView
        image.image = UIImage(named: "placeholder2")
        image.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height-height/2.5)
        incrementYPoint += image.frame.height
        incrementYPoint += 30
        image.contentMode = .scaleAspectFit
        
        //Label3
        label3.text = "Let's Do it!"
        label3.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/10)
        incrementYPoint += label2.frame.height
        label3.font = UIFont.systemFont(ofSize: 16)
        label3.textColor = .black
        
        
        //StackView2
        stackView2.axis = .horizontal
        stackView2.distribution = .fillEqually
        stackView2.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/16)
        
        //Camera Button
        cameraBtn.backgroundColor = .black
        cameraBtn.setTitle("Camera", for: .normal)
        cameraBtn.addTarget(self, action: #selector(OpenCamera), for: .touchDown)
        cameraBtn.titleLabel?.textColor = .white
        cameraBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        cameraBtn.titleLabel?.textAlignment = .center
        cameraBtn.frame = CGRect(x: 10, y: 0 ,width: width/2-10, height: height/16)
        cameraBtn.layer.cornerRadius = cameraBtn.frame.height/2
              
        
        //Album Button
        albumBtn.backgroundColor = .black
        albumBtn.setTitle("Import", for: .normal)
        albumBtn.addTarget(self, action: #selector(AccessPhoto), for: .touchDown)
        albumBtn.titleLabel?.textColor = .white
        albumBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        albumBtn.titleLabel?.textAlignment = .center
        albumBtn.frame = CGRect(x: cameraBtn.frame.width+20.0, y: 0 ,width: width/2-20, height: height/16)
        albumBtn.layer.cornerRadius = albumBtn.frame.height/2
        
        
        //Add SubView
        view.addSubview(stackView)
        stackView.addSubview(signOut)
        stackView.addSubview(label1)
        stackView.addSubview(label2)
        stackView.addSubview(image)
        stackView.addSubview(label3)
        stackView.addSubview(stackView2)
        stackView2.addSubview(cameraBtn)
        stackView2.addSubview(albumBtn)
    }
    
    @objc func OpenCamera() {
            let cameraView = UIImagePickerController()
            cameraView.delegate = self
            cameraView.sourceType = .camera
            self.present(cameraView, animated: true, completion: nil)

            print("Camera Opend..")
        }
    
        
        @objc func AccessPhoto() {
            let picker = UIImagePickerController()
            picker.allowsEditing = true
            picker.delegate = self
            present(picker, animated: true)
        }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        guard let image = info[.editedImage] as? UIImage else { return }

        let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.image.image = pickedImage
        self.label2.text = "This is my best moment ever!"
        label3.text = "To replace this moment .. click here"
        picker.dismiss(animated: true, completion: nil)
    }
        
    @objc func signout() {
        let vc = LoginVC()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
    }
    
}
