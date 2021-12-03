
import UIKit

class TodaysPhotoVC: UIViewController {
    
    //if collectionView is Empty
    let stackView = UIStackView()
    let button = UIButton()
    let label = UILabel()
    
    //if CollectionView not empty and  has items in it.
    let vc = MyCollectionViewController()
    let image = UIImageView()
    let desc = UILabel()
    
    
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
        stackView.addSubview(image)
        vc.image.image = UIImage(named: "placeholder2")
        image.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height-height/2.5)
        incrementYPoint += image.frame.height + 40.0
        image.contentMode = .scaleAspectFit
        
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

}



extension TodaysPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @objc func OpenCamera() {
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
        
//        let picker = UIImagePickerController()
//        picker.allowsEditing = true
//        picker.delegate = self
//        present(picker, animated: true)
//
//        print("Camera Opend..")
    }

    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }

        let imageName = UUID().uuidString
        let imagePath = getDocumentsDirectory().appendingPathComponent(imageName)

        if let jpegData = image.jpegData(compressionQuality: 0.8) {
            try? jpegData.write(to: imagePath)
        }
        
        let singleMemoryItem = SingleMemoryItem(image: image, desc: "")
        vc.arrOfItems.append(singleMemoryItem)
        
        dismiss(animated: true)
    }

    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
}
