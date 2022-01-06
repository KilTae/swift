
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    let border = CALayer()
    
    @IBOutlet weak var Id: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginID(_ sender: Any) {
       
        
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "FirstViewController") as? FirstViewController  else {
            return
        }
        nextVC.name=Id.text
        self.present(nextVC, animated: true, completion: nil)
        

        
        
    }
    
    @IBAction func createId(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController  else {
            return
        }
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
}

