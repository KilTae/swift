//
//  KakaoTableViewCell.swift
//  Kakao
//
//  Created by 길태연 on 2022/01/19.
//

import UIKit

class KakaoTableViewCell: UITableViewCell {
    static let identifier : String = "KakaoTableViewCell"

    @IBOutlet weak var msgLable: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!

    override func awakeFromNib() {
    
        super.awakeFromNib()
        userImageView.layer.cornerRadius = 25
        
        // Initialization code
    }
    
    
    
    func setData(imageName:String, name:String, msg: String){
        if let image = UIImage(named: imageName){
            userImageView.image = image
        }
        nameLabel.text = name
        msgLable.text = msg
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
