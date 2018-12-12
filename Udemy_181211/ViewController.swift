import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageArray = ["picture1.jpg", "picture2.jpg", "picture3.jpg", "picture4.jpg", "picture5.jpg"]
    
    var count = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func reload(_ sender: Any) {
        
        count = count + 1
        
        if count > 4 {
            
            performSegue(withIdentifier: "next", sender: nil)
    
            //一旦ここでプログラムを止める
            return
            
        }
        
        imageView.image = UIImage(named: imageArray[count])
        
    }
    
}

