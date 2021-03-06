import UIKit

class ViewController: UIViewController {
    
    var apiService = ApiService()

    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel = BookViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
   
        loadBooksData()
    }
        
        private func loadBooksData(){
            viewModel.getBooksData{
                [weak self] in
                self?.tableView.dataSource = self
                self?.tableView.reloadData()
            }
        }

        }
    }

    
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BookTableViewCell
        
        let book = viewModel.cellForRowAt(indexPath: indexPath)
        cell.setCellWithValuesOf(book)
        return cell
    }
    
    
}
