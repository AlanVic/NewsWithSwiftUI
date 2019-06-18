//
//  Article.swift
//  NewsWithSwiftUI
//
//  Created by Alan Victor Paulino de Oliveira on 18/06/19.
//  Copyright © 2019 Alan Victor Paulino de Oliveira. All rights reserved.
//

import Foundation
import SwiftUI

// MARK: - Article
struct Article: Codable, Identifiable {
    
    let id: Int
    let source: Source
    let author: String?
    let title, articleDescription: String
    let url: String
    let urlToImage: String
    let publishedAt: Date
    let content: String?
    
    enum CodingKeys: String, CodingKey {
        case id, source, author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt, content
    }
}

// MARK: - Source
struct Source: Codable {
    let id: ID
    let name: Name
}

enum ID: String, Codable {
    case googleNews = "google-news"
}

enum Name: String, Codable {
    case googleNews = "Google News"
}
