//
//  BookTableViewCell.swift
//  BookList
//
//  Created by 길태연 on 2022/01/03.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    
    @IBOutlet weak var bookPrintLength: UILabel!
    @IBOutlet weak var bookSummary: UILabel!
    @IBOutlet weak var bookAuthor: UILabel!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookCover: UIImageView!
    
    private var urlString: String = ""
    
    func setCellWithValuesOf(book:Book){
        updateUIView(title: String?, author: Stirng?,image: String?,description: String?,genre: String?,published: String?,isbn: String?,publisher: String?)
    }
    
    private func uodateUIView(title: String?, author: Stirng?,image: String?,description: String?,genre: String?,published: String?,isbn: String?,publisher: String?){
        self.bookTitle.text = title
        self.bookAuthor.text = author
        self.bookSummary.text=description
        //guard let page =
        // 이 부분 다름.
        self.bookCover.image = nil
        getImageDataFrom(url: coverImageURL)
    }

    private func getImageDataFrom(url: URL){
        URLSession.shared.dataTask(with: url){ Data, response, error) in
            if let error = error {
                print("dataTask Error: \(error.locall)")
                return
            
            }
            
            
            guard let data = data else {
                print ("Empty Data")
                return
            }
            
            DispatchQueue.main.async {
                if let image = UIImage(data: data){
                    self.bookCover.image=image
                }
            }
        }.resume()
    
}
