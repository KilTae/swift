//
//  DataModel.swift
//  2m4t_home
//
//  Created by 길태연 on 2022/01/20.
//

import Foundation
/*struct DataModel: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: Person
}

// MARK: - DataClass
struct Person: Codable {
    let username: String
//
//    enum CodingKeys: String, CodingKeys {
//        case name
//        case username
//    }
}
*/
//struct DataModel: Codable {
//    let page: Int
////    let status: Int
////    let success: Bool
////    let message: String
//    let data: [Person]
//}
//
//// MARK: - Result
//struct Person: Codable {
//    let originalTitle, posterPath: String
//    let id: Int
//    let video: Bool
//    let voteAverage: Double
//    let overview, releaseDate: String
//    let adult: Bool
//    let backdropPath, title: String
//    let genreIDS: [Int]
//    let voteCount: Int
//    let originalLanguage: String
//    let popularity: Double
//    let mediaType: String
//
//    enum CodingKeys: String, CodingKey {
//        case originalTitle = "original_title"
//        case posterPath = "poster_path"
//        case id, video
//        case voteAverage = "vote_average"
//        case overview
//        case releaseDate = "release_date"
//        case adult
//        case backdropPath = "backdrop_path"
//        case title
//        case genreIDS = "genre_ids"
//        case voteCount = "vote_count"
//        case originalLanguage = "original_language"
//        case popularity
//        case mediaType = "media_type"
//    }
//}

//struct DataModel: Codable {
//    let page: Int
//    let results: [Person]
//    let totalPages, totalResults: Int
//
//    enum CodingKeys: String, CodingKey {
//        case page, results
//        case totalPages = "total_pages"
//        case totalResults = "total_results"
//    }
//}
//
//// MARK: - Result
//struct DataModel: Codable {
//    let originalTitle: String?
//    let posterPath: String
//    let id: Int
//    let video: Bool?
//    let voteAverage: Double
//    let overview: String
//    let releaseDate: String?
//    let adult: Bool?
//    let backdropPath: String
//    let title: String?
//    let genreIDS: [Int]
//    let voteCount: Int
//  //  let originalLanguage: OriginalLanguage
//    let popularity: Double
// //   let mediaType: MediaType
//    let originalName: String?
//    let originCountry: [String]?
//    let firstAirDate, name: String?
//
//    enum CodingKeys: String, CodingKey {
//        case originalTitle = "original_title"
//        case posterPath = "poster_path"
//        case id, video
//        case voteAverage = "vote_average"
//        case overview
//        case releaseDate = "release_date"
//        case adult
//        case backdropPath = "backdrop_path"
//        case title
//        case genreIDS = "genre_ids"
//        case voteCount = "vote_count"
//        case originalLanguage = "original_language"
//        case popularity
//    }
//}
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

// MARK: - Welcome
struct DataModel: Codable {
    let page: Int
    let results: [Person]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct Person: Codable {
    let originalTitle: String?
    let posterPath: String
    let id: Int
    let video: Bool?
    let voteAverage: Double
    let overview: String
    let releaseDate: String?
    let adult: Bool?
    let backdropPath: String
    let title: String?
    let genreIDS: [Int]
    let voteCount: Int
    let originalLanguage: OriginalLanguage
    let popularity: Double
    let mediaType: MediaType
    let originalName: String?
    let originCountry: [String]?
    let firstAirDate, name: String?

    enum CodingKeys: String, CodingKey {
        case originalTitle = "original_title"
        case posterPath = "poster_path"
        case id, video
        case voteAverage = "vote_average"
        case overview
        case releaseDate = "release_date"
        case adult
        case backdropPath = "backdrop_path"
        case title
        case genreIDS = "genre_ids"
        case voteCount = "vote_count"
        case originalLanguage = "original_language"
        case popularity
        case mediaType = "media_type"
        case originalName = "original_name"
        case originCountry = "origin_country"
        case firstAirDate = "first_air_date"
        case name
    }
}

enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case ja = "ja"
}
