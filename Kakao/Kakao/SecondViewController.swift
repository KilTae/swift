

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var Id: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createId(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "FirstViewController") as? FirstViewController  else {
            return
        }
        nextVC.name = Id.text
        self.present(nextVC, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
