//
//  ViewController.swift
//  2m4t_home
//
//  Created by 길태연 on 2022/01/10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var circle1: UIView!
    @IBOutlet weak var ExhibiColor: UIButton!
    @IBOutlet weak var FestiColor: UIButton!
    @IBOutlet weak var MuseumColor: UIButton!
    @IBOutlet weak var userImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        circle1.layer.cornerRadius = 3
        userImg.layer.cornerRadius = 3

    }

    
   
    @IBAction func Exhibition(_ sender: Any) {
        
        circle1.frame.origin.x = 66
        ExhibiColor.isHighlighted = false
        FestiColor.isHighlighted = true
        MuseumColor.isHighlighted = true
        
    }
    
    @IBAction func Festival(_ sender: Any) {
        
        circle1.frame.origin.x = 138
        ExhibiColor.isHighlighted = true
        FestiColor.isHighlighted = false
        MuseumColor.isHighlighted = true
       
       
    }
    
    @IBAction func Museum(_ sender: Any) {
        
        circle1.frame.origin.x = 213
        ExhibiColor.isHighlighted = true
        FestiColor.isHighlighted = true
        MuseumColor.isHighlighted = false
    }
    
}

