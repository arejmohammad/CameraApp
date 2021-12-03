
import UIKit

private let reuseIdentifier = "Cell"

class MyCollectionViewController: UICollectionViewController {

    let reuseIdentifier = "Cell"
    var label = UILabel()
    var image = UIImageView()
    
    //this will replaced with the real image and description user enter.
    var arrOfItems = [SingleMemoryItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.backgroundColor = .blue
    }
    
    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrOfItems.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? MyCollectionViewCell else {
            fatalError("Unable to deque ReusableCell")
        }
        cell.frame = CGRect(x: 100, y: 100, width: 200, height: 240)
        cell.backgroundColor = .yellow
        
        cell.imageView.image = arrOfItems[indexPath.row].image
//        cell.description = arrOfItems[indexPath.row].desc
        
        return cell
    }
    
}
