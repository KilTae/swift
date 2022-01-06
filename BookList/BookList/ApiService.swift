import Foundation



class ApiService {
    
    
    private var dataTask: URLSessionDataTask?
    
    func fetchBookData(completion: @escaping(Result<BooksData,Error>) -> Void){
        let bookListURL = "https://oakbooklist-2cc97-default-rtdb.firebaseio.com/data.json"
        
        guard let url = URL(string: bookListURL) else { return }
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            do{
               
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(BooksData.self, from: data!)
                
          //      completionHandler(jsonData)
                DispatchQueue.main.async {
                    completion(.success(jsonData))
                }
            }
            
            catch let error{
                completion(.failure(error))
            }
        }

        dataTask.resume()
        
    }
}
