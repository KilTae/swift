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
//        GetDataService.shared.getDataInfo{ (response) in
//            switch(response){
//            case .success(let Results):
//
//                if let results = Results as? [Person] {
//                    print("123")
//                    self.L1.text = results[0].posterPath
//
//                    let url = URL(string: "https://image.tmdb.org/t/p/original\(results[0].posterPath)")
//                    let data = try? Data(contentsOf: url!)
//                    self.practiceImage.image = UIImage(data : data!)!
//
//
////                    self.L2.text = data.username
//
//                }
//
//            case .requestErr(let message) :
//                print("requestERR",message)
//            case .pathErr :
//                print("pathERR")
//            case .serverErr :
//                print("serverERR")
//            case .networkFail:
//                print("networkFail")
//
//
//            }
//
//
//
//        }
        
