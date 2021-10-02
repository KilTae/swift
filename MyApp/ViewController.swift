//
//  ViewController.swift
//  MyApp
//
//  Created by 길태연 on 2021/09/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var ratioTextField: UITextField!
    @IBOutlet weak var toggleCurrency: UISegmentedControl!
    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLable.text = "";
    }

    @IBAction func exchangeButton(_ sender: Any) {
        let ratio = Double(ratioTextField.text!)! //text를 double로 만들어준다.
        
        
        let input = Double(inputTextField.text!)!
        let result = ratio * input;
        
        if toggleCurrency.selectedSegmentIndex == 0 {
            resultLable.text = "BTC \(result)"; // + String(result)라고 해도 ㄱㅊ다.
            
            
        } else {
            resultLable.text = "ETH \(result)"; // + String(result)라고 해도 ㄱㅊ다.
           
        }

     
    }
    
}

