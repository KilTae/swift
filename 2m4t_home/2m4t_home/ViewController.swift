//
//  ViewController.swift
//  2m4t_home
//
//  Created by 길태연 on 2022/01/10.
//

import UIKit
import Alamofire

struct PersonDataModel : Encodable {
    var name : String
    var age : Int
}


struct CoffeDataModel : Decodable {
    var drink : String
    var price : Int
}

class ViewController: UIViewController {
    
    let personData = PersonDataModel(name: "dd", age: 12)
    
    let dummyData = """
        {
            "drink" : "아메리카노",
            "price" : 2000
        
        
        }
        """.data(using: .utf8)!
   
    
    @IBOutlet weak var practiceImage: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var L2: UILabel!
    @IBOutlet weak var L1: UILabel!
    @IBOutlet weak var circle1: UIView!
    @IBOutlet weak var ExhibiColor: UIButton!
    @IBOutlet weak var FestiColor: UIButton!
    @IBOutlet weak var MuseumColor: UIButton!
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var imageCollectionView: UICollectionView!
    
    @IBOutlet weak var hashtagCollectionView: UICollectionView!
    private var imageList : [ImageDataModel] = []
    private var hashList : [HashtageDataModel] = []
    private var posterList : [DataModel] = []
  
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        apiLoad(a: ExhibiColor)
        setHashList()
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
        hashtagCollectionView.delegate = self
        hashtagCollectionView.dataSource = self
        circle1.layer.cornerRadius = 3
        userImg.layer.cornerRadius = 3

    }
    
    func apiLoad(a: UIButton){
        GetDataService.shared.getDataInfo{ [self] (response) in
            switch(response){
            case .success(let Results):
                
                if let results = Results as? [Person] {
                
                    if a == ExhibiColor {
                    for i in 0 ... 9 {
                        setImageList(a: results[i].posterPath)
                        
                    }
                    }
                    if a == FestiColor {
                    for i in 10 ... 19 {
                        setImageList(a: results[i].posterPath)
                        
                    }
                    }
                    
                    if a == MuseumColor {
                    for i in 6 ... 15 {
                        setImageList(a: results[i].posterPath)
                        
                    }
                    }
                    
                    
                   
                    
                    
                    DispatchQueue.main.async {
                        self.imageCollectionView.reloadData()
                    }
                        
                }
                
            case .requestErr(let message) :
                print("requestERR",message)
            case .pathErr :
                print("pathERR")
            case .serverErr :
                print("serverERR")
            case .networkFail:
                print("networkFail")
                
                
            }
            
            
            
        }
        
        
    }
    

    func setImageList(a: String) {

        imageList.append(contentsOf: [
            
            ImageDataModel(coverName: a)
        
        ])
        
        
        
    }
    
    func setHashList(){
        
        hashList.append(contentsOf: [
            HashtageDataModel(covername: "1", title: "dkdkdk"),
            HashtageDataModel(covername: "2", title: "d123"),
            HashtageDataModel(covername: "3", title: "dkdk234dk"),
            HashtageDataModel(covername: "4", title: "dkdkd346k"),
            HashtageDataModel(covername: "5", title: "dkdk4567dk"),
            HashtageDataModel(covername: "6", title: "dkdkd234k"),
            HashtageDataModel(covername: "7", title: "dkdkd123k")
        
            
        
        
        ])
        
        
    }
    
   
    @IBAction func Exhibition(_ sender: Any) {
        imageList.removeAll()

        apiLoad(a: ExhibiColor)

        
        circle1.frame.origin.x = 66
        ExhibiColor.isHighlighted = false
        FestiColor.isHighlighted = true
        MuseumColor.isHighlighted = true
        imageCollectionView.reloadData()
        imageCollectionView.scrollsToTop = true
        imageCollectionView.scrollToItem(at: IndexPath(row: 0, section: 0), at: .centeredHorizontally, animated: true)
       
        
    }
    
    @IBAction func Festival(_ sender: Any) {
        imageList.removeAll()
        apiLoad(a: FestiColor)
        circle1.frame.origin.x = 138
        ExhibiColor.isHighlighted = true
        FestiColor.isHighlighted = false
        MuseumColor.isHighlighted = true
        imageCollectionView.reloadData()
        imageCollectionView.scrollsToTop = true
        imageCollectionView.scrollToItem(at: IndexPath(row: 0, section: 0), at: .centeredHorizontally, animated: true)
       
       
    }
    
    @IBAction func Museum(_ sender: Any) {
        imageList.removeAll()
        apiLoad(a: MuseumColor)
        circle1.frame.origin.x = 213
        ExhibiColor.isHighlighted = true
        FestiColor.isHighlighted = true
        MuseumColor.isHighlighted = false
        imageCollectionView.reloadData()
        imageCollectionView.scrollToItem(at: IndexPath(row: 0, section: 0), at: .centeredHorizontally, animated: true)
       
    }
    
}

extension ViewController : UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == imageCollectionView{ return imageList.count }
        else {return posterList.count }
    
                
            
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == imageCollectionView{
        guard let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCollectionViewCell.identifier, for: indexPath) as? ImageCollectionViewCell else {return ImageCollectionViewCell() }
       
        imageCell.setData(imageName: imageList[indexPath.row].coverName)
            
        return imageCell
        }
        
        else {
            guard let hashCell = collectionView.dequeueReusableCell(withReuseIdentifier: HashtagCollectionViewCell.identifier, for: indexPath) as? HashtagCollectionViewCell else {return HashtagCollectionViewCell() }
           
                   hashCell.setData(imageName: hashList[indexPath.row].covername,
                                    title: hashList[indexPath.row].title)
            
            
           
                   return hashCell
        
    }
    
    
    
}
    
    
    
}

extension ViewController : UICollectionViewDelegate {
    
    
}

extension ViewController : UICollectionViewDelegateFlowLayout {
    

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    
    
    
}

