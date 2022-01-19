//
//  KakaoViewController.swift
//  Kakao
//
//  Created by 길태연 on 2022/01/19.
//

import UIKit
class KakaoViewController: UIViewController {
    
    @IBOutlet weak var MoreCollectionView: UICollectionView!
    @IBOutlet weak var kakaoTableView: UITableView!
    var kakaoList : [KakaoDataModel] = []
    
    var moreList : [MoreDataModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setKakaoList()
        setMoreList()
        MoreCollectionView.delegate = self
        MoreCollectionView.dataSource = self
        kakaoTableView.delegate = self
        kakaoTableView.dataSource = self
        kakaoTableView.separatorStyle = .none
        
        

        // Do any additional setup after loading the view.
    }
    
    
    
    func setMoreList(){
        moreList.append(contentsOf: [
           MoreDataModel(msg: "메일"),
            MoreDataModel(msg: "캘린더"),
            MoreDataModel(msg: "서랍"),
            MoreDataModel(msg: "카카오콘"),
            MoreDataModel(msg: "메이커스"),
            MoreDataModel(msg: "선물하기"),
            MoreDataModel(msg: "이모티콘"),
            MoreDataModel(msg: "어쩌턴즈"),
            MoreDataModel(msg: "쇼핑하기"),
            MoreDataModel(msg: "스타일"),
            MoreDataModel(msg: "주문하기"),
            MoreDataModel(msg: "멜론티켓"),
            MoreDataModel(msg: "게임"),
            MoreDataModel(msg: "멜론"),
            MoreDataModel(msg: "헤어샵"),
            MoreDataModel(msg: "전체서비스")
                           
                        
                           ])
        
        
        
        
        }
                    
    
    func setKakaoList(){
        kakaoList.append(contentsOf: [
            KakaoDataModel(ImageName: "마동석",
                           title: "안솝트",
                           msg: "배고파요"),
            
            KakaoDataModel(ImageName: "마동석",
                           title: "최솝트",
                           msg: "피곤해요"),
            
            KakaoDataModel(ImageName: "마동석",
                           title: "정솝트",
                           msg: "시험언제끝나죠?"),
            
            KakaoDataModel(ImageName: "마동석",
                           title: "이솝트",
                           msg: "ㅠㅠㅠㅠ"),
            
            KakaoDataModel(ImageName: "마동석",
                           title: "유솝트",
                           msg: "나는 상태메세지!"),
            
            KakaoDataModel(ImageName: "마동석",
                           title: "박솝트",
                           msg: "원하는대로 바꿔보세요 ^_^"),
            
            KakaoDataModel(ImageName: "마동석",
                           title: "최솝트",
                           msg: "넘 덥다.."),
            
            KakaoDataModel(ImageName: "마동석",
                           title: "원솝트",
                           msg: "배고파요"),
            
            KakaoDataModel(ImageName: "마동석",
                           title: "투솝트",
                           msg: "내꿈은 대나무부자"),
            
            KakaoDataModel(ImageName: "마동석",
                           title: "권솝트",
                           msg: "걱정말라구!")
        
        
        ])
        
        
        
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showDetail" {
//        let vc = segue.destination as? ThirdViewController
//        if let index = sender as? Int {
//            vc?.nameLabel.text = kakaoList[index].title
//                //   vc?.userImgView.image = kakaoList[index].ImageName
//            }
//        }
//        
//    }
    
    
}


extension KakaoViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
    
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
                    guard let nextVC = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as? ThirdViewController  else {
                        return
                    }
        
            nextVC.modalPresentationStyle = .fullScreen
                    self.present(nextVC, animated: true, completion: nil)
        
        
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
            
        }
    
}
extension KakaoViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        kakaoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let kakaoCell = tableView.dequeueReusableCell(withIdentifier: KakaoTableViewCell.identifier, for: indexPath) as? KakaoTableViewCell else {return UITableViewCell()}
        
        
        kakaoCell.setData(imageName: kakaoList[indexPath.row].ImageName, name:  kakaoList[indexPath.row].title, msg:  kakaoList[indexPath.row].msg)
        
        return kakaoCell
    }
    
    
}

extension KakaoViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moreList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let moreCell = collectionView.dequeueReusableCell(withReuseIdentifier: MoreCollectionViewCell.identifier, for: indexPath) as? MoreCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        moreCell.setData(msg: moreList[indexPath.row].msg)
        return moreCell
    }
    
    
    
}
extension KakaoViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 19
    }
}

