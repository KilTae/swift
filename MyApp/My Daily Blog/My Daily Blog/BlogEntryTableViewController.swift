//
//  BlogEntryTableViewController.swift
//  My Daily Blog

import UIKit

class BlogEntryTableViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var blogEntryTextView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    

    var blogEntry: BlogEntry?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
/*        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillshow), name: UIResponder.keyboardDidShowNotification, object: nil)
        */
        if blogEntry == nil {
            if let context =  (UIApplication.shared.delegate as?  AppDelegate)?.persistentContainer.viewContext{
                
                blogEntry = BlogEntry(context: context);
                blogEntry?.date = datePicker.date
                blogEntry?.content = "thank you"
                blogEntryTextView.becomeFirstResponder();
    
        }
            
        }
        
        blogEntryTextView.text=blogEntry?.content
        
        if let dateToBeDisplayed = blogEntry?.date{
            datePicker.date = dateToBeDisplayed
            
        }
        blogEntryTextView.delegate = self;
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //Make Entry  delegate는 db
            
            (UIApplication.shared.delegate as?  AppDelegate)?.saveContext();
        

    }
    
 /*   키보드 높이 조절하는거
     func keyboardWillshow(notificatiion:NSNotification) {
        <#function body#>
    }*/
    @IBAction func onDelete(_ sender: Any) {
        if blogEntry != nil {
            if let context =  (UIApplication.shared.delegate as?  AppDelegate)?.persistentContainer.viewContext{
                context.delete(blogEntry!)
                try? context.save()
            }
            
    }
        navigationController?.popViewController(animated: true)
    }
    func textViewDidChange(_ textView: UITextView) {
        //edit
        
        blogEntry?.content = blogEntryTextView.text
        (UIApplication.shared.delegate as?  AppDelegate)?.saveContext();
        
    }
    @IBAction func onDateChange(_ sender: Any) {
        blogEntry?.date = datePicker.date
        (UIApplication.shared.delegate as?  AppDelegate)?.saveContext();
        
    }
    
}
