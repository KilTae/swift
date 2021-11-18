//
//  BlogEntryTableViewController.swift
//  My Daily Blog

import UIKit

class BlogEntryTableViewController: UIViewController {

    @IBOutlet weak var blogEntryTextView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var entriesViewController: BlogEntriesTableViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //Make Entry
        
        let blogEntry = BlogEntry();
        blogEntry.date = datePicker.date;
        blogEntry.content = blogEntryTextView.text;
        
        //Add Entry tableview array
        entriesViewController?.blogEntries.append(blogEntry);
        entriesViewController?.tableView.reloadData();
    }


}
