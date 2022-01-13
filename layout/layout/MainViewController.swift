//
//  MainViewController.swift
//  layout
//
//  Created by 길태연 on 2022/01/13.
//

import UIKit

class MainViewController: UIViewController, SampleProtocol {

    

    @IBOutlet weak var dataLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func dataSend(data: String) {
        
        dataLabel.text = data
        
        
    }

    @IBAction func nextButtonClicked(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "DelegateViewController") as? DelegateViewController else {return}
    
        NotificationCenter.default.addObserver(self, selector: #selector(dataReceived), name: NSNotification.Name("sample"), object: nil)
        // 만약 notification을 사용해야 할 때 
        
        
   //     nextVC.delegate = self // 만약 delegate 를 사용해야 할 때
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
   
    
    @objc func dataReceived(notification: NSNotification){
        
        if let text = notification.object as? String{
            dataLabel.text = text
        }
    }

}
