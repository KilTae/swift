//
//  MusicViewController.swift
//  layout
//
//  Created by 길태연 on 2022/01/13.
//

import UIKit

class MusicViewController: UIViewController {

    @IBOutlet weak var musicCollectionView: UICollectionView!
    
    private var musicList : [MusicDataModel] = []
    
//    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//    layout.scrolldirection =.horizontal
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMusicList()
        musicCollectionView.delegate = self
        musicCollectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func setMusicList() {
        
        musicList.append(contentsOf:[
            
            MusicDataModel(coverName: "Unknown", musicTitle: "용가리"),
            MusicDataModel(coverName: "The_Science-Backed_Benefits_of_Being_a_Dog_Owner", musicTitle: "ㅁ가리"),
            MusicDataModel(coverName: "Unknow3n", musicTitle: "ㅇ가리"),
            MusicDataModel(coverName: "Unknown", musicTitle: "ㄹ가리"),
            MusicDataModel(coverName: "The_Science-Backed_Benefits_of_Being_a_Dog_Owner", musicTitle: "ㅎ가리"),
            MusicDataModel(coverName: "Unknow3n", musicTitle: "ㅛ가리"),
            MusicDataModel(coverName: "Unknown", musicTitle: "ㅂ가리"),
            MusicDataModel(coverName: "The_Science-Backed_Benefits_of_Being_a_Dog_Owner", musicTitle: "ㅈ가리"),
            MusicDataModel(coverName: "Unknow3n", musicTitle: "ㄷ가리"),
            MusicDataModel(coverName: "Unknown", musicTitle: "ㄱ가리"),
            MusicDataModel(coverName: "The_Science-Backed_Benefits_of_Being_a_Dog_Owner", musicTitle: "ㅅ가리"),
            MusicDataModel(coverName: "Unknow3n", musicTitle: "ㅛ가리"),
            MusicDataModel(coverName: "Unknown", musicTitle: "ㅕ가리"),
            MusicDataModel(coverName: "The_Science-Backed_Benefits_of_Being_a_Dog_Owner", musicTitle: "ㅋㅋ가리"),
            
            
        
        
        ])
        
    }
    
    
    
}

extension MusicViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return musicList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let musicCell = collectionView.dequeueReusableCell(withReuseIdentifier: MusicCollectionViewCell.identifier, for: indexPath) as? MusicCollectionViewCell else {
//            return UICollectionViewCell()
//        }
//
//        musicCell.setData(imageName: musicList[indexPath.row].coverName, title: musicList[indexPath.row].musicTitle)
//        return musicCell
        
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
        
    }
    
    
    
}

extension MusicViewController : UICollectionViewDelegate{
    
    
}

extension MusicViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        let cellWidth = width * (177/375)
        let cellHeigth = cellWidth * (205/177)
        
        return CGSize(width: cellWidth, height: cellHeigth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    
}
