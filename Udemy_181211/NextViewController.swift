import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageArray = ["picture1.jpg", "picture2.jpg", "picture3.jpg", "picture4.jpg", "picture5.jpg"]
    
    var count = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector:  #selector(countUp), userInfo: nil, repeats: true)

    }
    
    @objc func countUp() {
        
        count = count + 1
        
        if count > 4 {
            
            count = 0
            
        }
        
        //picture1.jpgから始めたいときは、count-1にする
        imageView.image = UIImage(named: imageArray[count])
        
    }
  
}
