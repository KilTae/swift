//
//  BlogEntriesTableViewController.swift
//  My Daily Blog
//


import UIKit

class BlogEntriesTableViewController: UITableViewController {
    var blogEntries: [BlogEntry] = [];
    override func viewDidLoad() {
        super.viewDidLoad()
       // this is called once(at the first time)
    }

    override func viewWillAppear(_ animated: Bool) {
        // this is called every time
        if let context =  (UIApplication.shared.delegate as?  AppDelegate)?.persistentContainer.viewContext{
            
            if let dataFromCoreData = try? context.fetch(BlogEntry.fetchRequest()) as? [BlogEntry] {
                blogEntries = dataFromCoreData;
                self.tableView.reloadData()
            }
  
        }
    
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return blogEntries.count;
    }
// table view
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let row = tableView.dequeueReusableCell(withIdentifier: "entryRow"){
            let blogEntry = blogEntries[indexPath.row];
         //   row.textLabel?.text = blogEntry.content


            return row;
            
        } else {
            return UITableViewCell();
        }
        
      
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let blogEntry = blogEntries[indexPath.row];
        performSegue(withIdentifier: "onEntrySegue", sender: blogEntry)
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let entryViewController = segue.destination as? BlogEntryTableViewController {
            
            if let onEntrySubmit = sender as? BlogEntry {
                entryViewController.blogEntry = onEntrySubmit
            }
       
        }
    }
}
