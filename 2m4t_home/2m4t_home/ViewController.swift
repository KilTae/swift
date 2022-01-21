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
        

        
        setImageList(a: "3", b: "3", c: "3", d: "4", e:"5", f:"6",
                    g:"7", h:"8", I:"9", j:"10")
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
        
        
        setHashList()
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
        hashtagCollectionView.delegate = self
        hashtagCollectionView.dataSource = self
        circle1.layer.cornerRadius = 3
        userImg.layer.cornerRadius = 3

    }

    func setImageList(a: String, b: String, c: String, d: String, e:String, f:String,
                      g:String, h:String, I:String, j:String) {
//        GetDataService.shared.getDataInfo{ (response) in
//            switch(response){
//            case .success(let Results):
//
//                if let results = Results as? [Person] {
//                    print("Tjdrhd")
//                    self.L1.text = results[0].posterPath
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
//            }
//        }
        imageList.append(contentsOf: [
            
            
            ImageDataModel(coverName: a),
            ImageDataModel(coverName: b),
            ImageDataModel(coverName: c),
            ImageDataModel(coverName: d),
            ImageDataModel(coverName: e),
            ImageDataModel(coverName: f),
            ImageDataModel(coverName: g),
            ImageDataModel(coverName: h),
            ImageDataModel(coverName: I),
            ImageDataModel(coverName: j),

        
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
        setImageList(a: "1", b: "1", c: "1", d: "1", e:"1", f:"1",
                          g:"1", h:"1", I:"1", j:"1")
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
        setImageList(a: "6", b: "6", c: "6", d: "6", e:"6", f:"6",
                          g:"6", h:"6", I:"6", j:"6")
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
       setImageList(a: "3", b: "3", c: "3", d: "3", e:"3", f:"3",
                          g:"3", h:"3", I:"3", j:"3")
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

