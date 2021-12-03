
import Foundation
import UIKit

//here we definr object only.
class SingleMemoryItem: NSObject {
    
    var image: UIImage
    var desc: String
    
    init(image: UIImage, desc: String) {
        self.image = image
        self.desc = desc
    }
}

