//
//  ImageCollectionViewCell.swift
//  2m4t_home
//
//  Created by 길태연 on 2022/01/16.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    static let identifier : String = "ImageCollectionViewCell"
    @IBOutlet weak var ImageView: UIImageView!
    
    func setData(imageName : String){
        
        if let image = UIImage(named: imageName){
            ImageView.image = image
        }
    }
    
    
}
