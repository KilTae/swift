//
//  CountryDefinitionViewController.swift
//  Country List
//
//  Created by κΈΈνμ° on 2021/10/31.
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
     //   let flags = ["π°π·","π±π·","π»π³","π΅π²"];
        
   /*     if country == "π±π·" {
            countryDefinitionLabel.text = "US"
        }
        
        
        if country == "π°π·" {
            countryDefinitionLabel.text = "korea"
        }
        
        if country == "π»π³" {
            countryDefinitionLabel.text = "vietnam"
        }
        
        if country == "π΅π²" {
            countryDefinitionLabel.text = "st.pierre"
        }
*/
    }


}
