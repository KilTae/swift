//
//  SecondViewController.swift
//  KakaoT
//
//  Created by 길태연 on 2022/01/05.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func createButton(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "FirstViewController") as? FirstViewController else {
            return
        }
        self.present(nextVC, animated: true, completion: nil)
        
            
    }
   


}
