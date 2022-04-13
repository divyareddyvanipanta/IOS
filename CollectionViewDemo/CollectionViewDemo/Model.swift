//
//  Model.swift
//  CollectionViewDemo
//
//  Created by Vanipanta,Divya Reddy on 4/11/22.
//

import Foundation

struct Movie{
    var title: String
    var rating: Double
    var yearOfRelease: Int
    var boxOffice: String
    var urlToPoster: String
    var ytVideoId: String
    
    static func loadData() -> [Movie] {
        var movies = [Movie]()
        
        movies.append(Movie(title: "Manadu", rating: 8.8, yearOfRelease: 2020, boxOffice: "khjgvfh", urlToPoster: "sdvf", ytVideoId: "sfdf"))
        movies.append(Movie(title: "Manadu", rating: 8.8, yearOfRelease: 2020, boxOffice: "khjgvfh", urlToPoster: "sdvf", ytVideoId: "sfdf"))
        return movies
    }
}


