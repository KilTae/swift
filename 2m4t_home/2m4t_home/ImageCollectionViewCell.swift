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
    var noserviceClosure : (()->())?
  
    func setData(imageName : String){
        
//        if let image = UIImage(named: imageName){
//            ImageView.image = image
//        }
        
        let url = URL(string: "https://image.tmdb.org/t/p/original\(imageName)")
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url!)
            DispatchQueue.main.async {
                self.ImageView.image = UIImage(data : data!)
            }
        }
                           
     
        
        
        
        
        
    }
    
    
}
