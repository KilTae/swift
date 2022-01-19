//
//  MoreCollectionViewCell.swift
//  Kakao
//
//  Created by 길태연 on 2022/01/19.
//

import UIKit

class MoreCollectionViewCell: UICollectionViewCell {
    
    static let identifier : String = "MoreCollectionViewCell"

    
    @IBOutlet weak var msgLabel: UILabel!
    
    func setData( msg: String){
        msgLabel.text = msg
    }

    
}
