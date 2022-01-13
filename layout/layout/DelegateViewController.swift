//
//  DelegateViewController.swift
//  layout
//
//  Created by 길태연 on 2022/01/13.
//

import UIKit
protocol SampleProtocol {
    func dataSend(data : String)
}


class DelegateViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    var delegate : SampleProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func dataSendButtonClicked(_ sender: Any) {
        if let text = dataTextField.text{
            
            NotificationCenter.default.post(name: NSNotification.Name("sample"), object: text)
            //delegate?.dataSend(data: text)
        }
        
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
