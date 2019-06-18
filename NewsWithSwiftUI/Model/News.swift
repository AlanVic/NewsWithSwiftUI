//
//  News.swift
//  NewsWithSwiftUI
//
//  Created by Alan Victor Paulino de Oliveira on 18/06/19.
//  Copyright © 2019 Alan Victor Paulino de Oliveira. All rights reserved.
//

import Foundation
import SwiftUI

// MARK: - News
struct News: Codable, Identifiable {
    let id: Int
    let status: String
    let totalResults: Int
    let articles: [Article]
}
