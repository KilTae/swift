//
//  2m4tTableViewCell.swift
//  2m4t_review
//
//  Created by 길태연 on 2022/01/12.
//

import UIKit

class _m4tTableViewCell: UITableViewCell {
    static let identifier : String = "_m4tTableViewCell"


    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var removeButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        
        
    }
    
    
    func setData(title : String, subtitle : String, data : String)  {
        titleLabel.text = title
        dataLabel.text = data
        reviewLabel.text = subtitle
        
    }

}
