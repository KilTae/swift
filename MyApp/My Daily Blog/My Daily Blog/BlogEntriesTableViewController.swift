//
//  BlogEntriesTableViewController.swift
//  My Daily Blog
//


import UIKit

class BlogEntriesTableViewController: UITableViewController {
    var blogEntries: [BlogEntry] = [];
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return blogEntries.count;
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = UITableViewCell();
        
        let blogEntry = blogEntries[indexPath.row];
        row.textLabel?.text = blogEntry.content


        return row;
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let entryViewController = segue.destination as? BlogEntryTableViewController {
            
            entryViewController.entriesViewController = self;
        }
    }
}
