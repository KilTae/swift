

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    
    var membername : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        setName()

        // Do any additional setup after loading the view.
    }
    
    func setName() {
        if let nam = self.membername{
            name.text = nam
        }
        else {
            name.text = "asdf"
            
        }
    }
    
    @IBAction func checkButton(_ sender: Any) {
//
//        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController else {
//            return
//        }


     //   self.navigationController?.popViewController(animated: true)
       self.dismiss(animated: true, completion: nil)
    }
    

}
