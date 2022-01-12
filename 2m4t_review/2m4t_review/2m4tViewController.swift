//
//  2m4tViewController.swift
//  2m4t_review
//
//  Created by 길태연 on 2022/01/12.
//

import UIKit

class _m4tViewController: UIViewController {
    @IBOutlet weak var serviceTableView: UITableView!
    
    var serviceList : [ServiceListDataModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setServiceList()
        serviceTableView.delegate = self
        serviceTableView.dataSource = self
        serviceTableView.separatorStyle = .none

        // Do any additional setup after loading the view.
    }
    
    func setServiceList() {
        serviceList.append(contentsOf: [
            
            ServiceListDataModel(title: "응응 알앗어요", subtitle: "니 말이 다 맞다", data: "4 MAR 2019"),
            ServiceListDataModel(title: "니 말이 다 맞아", subtitle: "참 힘이 된다", data: "5 MAR 2019"),
            ServiceListDataModel(title: "참 힘이된다", subtitle: "그렇지 나도 그렇게 생각해", data: "6 MAR 2019"),
            ServiceListDataModel(title: "그렇지 나도 그렇게 생각해", subtitle: "우리 모두 짱", data: "7 MAR 2019"),
            ServiceListDataModel(title: "우리 모두 짱", subtitle: "응응 알앗어요", data: "8 MAR 2019"),
            ServiceListDataModel(title: "우리 모두 짱", subtitle: "응응 알앗어요", data: "8 MAR 2019"),
            ServiceListDataModel(title: "우리 모두 짱", subtitle: "응응 알앗어요", data: "8 MAR 2019"),
            ServiceListDataModel(title: "우리 모두 짱", subtitle: "응응 알앗어요", data: "8 MAR 2019")
        
        
        
        ])
        
        
    }
    
}
    extension _m4tViewController : UITableViewDelegate
    {
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 150
        }
//        func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//            let action = UIContextualAction(style: .normal, title: nil) { (action, view, completion) in
//                tableView.deleteRows(at: [IndexPath], with: .automatic)
//                completion(true)
//
//            }
//
//            action.backgroundColor = .blue
//            let configuration = UISwipeActionsConfiguration(actions: [action])
//            configuration.performsFirstActionWithFullSwipe = false
//            return configuration
    
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete{
                serviceList.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
        
    }
    extension _m4tViewController : UITableViewDataSource
    {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return serviceList.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let serviceCell = tableView.dequeueReusableCell(withIdentifier: _m4tTableViewCell.identifier, for: indexPath) as? _m4tTableViewCell else {return _m4tTableViewCell()}
            
            serviceCell.setData(title: serviceList[indexPath.row].title, subtitle: serviceList[indexPath.row].subtitle, data: serviceList[indexPath.row].data)
            return serviceCell
            
        }
        
        
        
        
    }


