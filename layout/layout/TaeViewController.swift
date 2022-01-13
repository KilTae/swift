//
//  TaeViewController.swift
//  layout
//
//  Created by 길태연 on 2022/01/13.
//

import UIKit

class TaeViewController: UIViewController {

    @IBOutlet weak var sampleLabel: UILabel!
    @IBOutlet weak var sampleTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sampleTextField.delegate = self // sampleTextField 의 delegate(뒷 바라지)는 내가 하겠다.

        // Do any additional setup after loading the view.
    }
    



}

extension TaeViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //sampleTextField.delegate = self
        sampleLabel.text = sampleTextField.text
        return true
    }
    
    
    
}
