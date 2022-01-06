import Foundation

struct BooksData: Codable {
    let books: [Book] // 이 부분 바꾸기
    
    private enum CodingKeys: String, CodingKey{
        case books = "books"
    }
}

struct Book: Codable {
    var title: String?
    var author: String?
    var image: String?
    var description: String?
    var genre: String?
    var published: String?
    var isbn: String?
    var publisher: String?
    
    private enum CodingKeys: String, CodingKey{
        case title,author,image,description,genre,published,isbn,publisher
    }
}
