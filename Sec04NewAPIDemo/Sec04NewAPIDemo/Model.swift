//
//  Model.swift
//  Sec04NewAPIDemo
//
//  Created by chandra on 4/4/22.
//

import Foundation

struct Article: Codable{
    var title: String?
    var description: String?
    var author: String?
    var urlToImage: String?
    var content: String?
}

struct Articles: Codable{
    var articles: [Article]
}

struct AppConstants{
    static let entertainmentUrl = "https://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=dfefcca595514fdda345e3c4cef0e45e"
}
