//
//  CountryTableViewController.swift
//  Country List
//
//  Created by 길태연 on 2021/10/02.
//

import UIKit

class CountryTableViewController: UITableViewController {
    
    let flags = getCountries();

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flags.count;
    }

    //what is each particular item
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)

        // Configure the cell...
       
        cell.textLabel?.text =  flags[indexPath.row].flag + "-" + flags[indexPath.row].name;
        //print(indexPath.row) 몇개 리스트 프린트 되는지

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCountry = flags[indexPath.row];
        performSegue(withIdentifier: "DefinitionSegue", sender: selectedCountry)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let defOfViewController = segue.destination as?
        CountryDefinitionViewController{
        if let selectedCountry = sender as? Country {
            defOfViewController.country = selectedCountry;
        }
          
        
        }
        
     
        
    }
}
