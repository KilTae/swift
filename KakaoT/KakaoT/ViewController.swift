
import UIKit

class ViewController: UIViewController {

 
   
    @IBOutlet weak var id: UITextField!
    

    @IBOutlet weak var password: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButton(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "FirstViewController") as? FirstViewController else {
            return
        }
     //  self.present(nextVC, animated: true, completion: nil)
        
        nextVC.membername = id.text
    }
    

    
    @IBAction func createButton(_ sender: Any) {
        
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController else {
            return
        }
        self.navigationController?.pushViewController(nextVC, animated: true)

    }
 
       
}

