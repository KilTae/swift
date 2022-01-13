//
//  MusicCollectionViewCell.swift
//  layout
//
//  Created by 길태연 on 2022/01/13.
//

import UIKit

class MusicCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    static let identifier : String = "MusicCollectionViewCell"
    
    func setData(imageName : String, title : String)
    {
        if let image = UIImage(named: imageName){
            albumImageView.image = image
            
        }
        
        titleLabel.text = title
        
        
    }
    
}
