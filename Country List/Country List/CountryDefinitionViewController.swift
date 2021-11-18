//
//  CountryDefinitionViewController.swift
//  Country List
//
//  Created by 길태연 on 2021/10/31.
//

import UIKit

class CountryDefinitionViewController: UITableViewController {
    
    @IBOutlet weak var bigFlagLabel: UILabel!
    

    @IBOutlet weak var countryDefinitionLabel: UITextField!
    
    var country: Country = Country();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        bigFlagLabel.text=country.flag;
        countryDefinitionLabel.text="\(country.name) flag is \(country.flag).";
     //   let flags = ["🇰🇷","🇱🇷","🇻🇳","🇵🇲"];
        
   /*     if country == "🇱🇷" {
            countryDefinitionLabel.text = "US"
        }
        
        
        if country == "🇰🇷" {
            countryDefinitionLabel.text = "korea"
        }
        
        if country == "🇻🇳" {
            countryDefinitionLabel.text = "vietnam"
        }
        
        if country == "🇵🇲" {
            countryDefinitionLabel.text = "st.pierre"
        }
*/
    }


}