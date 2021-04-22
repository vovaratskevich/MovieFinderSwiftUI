//
//  Movie.swift
//  MovieFinderSwiftUI
//
//  Created by user on 23.03.2021.
//

import Foundation

struct MovieResponse: Decodable {
    
    let result: [Movie]
}

struct Movie: Decodable {
    
    let id: Int
    let titel: String
    let backdropPath: String?
    let posterPath: String?
    let overview: String
    let voteAverage: Double
    let voteCount: Int
    let runtime: Int?
    
    var backdropURL: URL {
        
        return URL (string: "https://image.tmdb.org/t/p/w500\(backdropPath ?? "")")!
    }
}
