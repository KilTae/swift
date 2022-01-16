//
//  HashtagCollectionViewCell.swift
//  2m4t_home
//
//  Created by 길태연 on 2022/01/16.
//

import UIKit

class HashtagCollectionViewCell:
    UICollectionViewCell {
    static let identifier : String = "HashtagCollectionViewCell"
    
    @IBOutlet weak var hashtagImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func setData(imageName : String,
                 title : String){
        
        if let image = UIImage(named : imageName){
            hashtagImageView.image = image
        }
        
        titleLabel.text = title
    }
    
    
}
