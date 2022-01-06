

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        setName()
        // Do any additional setup after loading the view.
    }
    func setName() {
        if let nam = self.name{
            nameLabel.text = nam + "님"
        }
    }

    @IBAction func checkButton(_ sender: Any) {
//        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController  else {
//            return
//        }
//        self.present(nextVC, animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
        
    
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
