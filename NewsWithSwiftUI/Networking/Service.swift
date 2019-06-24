//
//  Service.swift
//  NewsWithSwiftUI
//
//  Created by Alan Victor Paulino de Oliveira on 18/06/19.
//  Copyright © 2019 Alan Victor Paulino de Oliveira. All rights reserved.
//

import SwiftUI
import Combine

let apiKey = "a5cb29cc931b4e3c8215fa592232c218"

class Service: BindableObject {
    var didChange = PassthroughSubject<Service,Never>()
    
    var articles = [Article]() {
        didSet{
            didChange.send(self)
        }
    }
    
    init(){
        let newsUrl = "https://newsapi.org/v2/top-headlines"
        
        var component = URLComponents(string: newsUrl)
        component?.queryItems = [
            URLQueryItem(name: "country", value: "pt"),
            URLQueryItem(name: "apiKey", value: apiKey)
        ]
        
        guard let url = component?.url else {return}
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data else {return}
            if let err = error {
                print("Erro to consume", err)
            }
            
            do {
                let news = try JSONDecoder().decode(News.self, from: data)
                DispatchQueue.main.async {
                    self.articles = news.articles
                }
            } catch let error {
                print("Fail in consume", error)
            }
        }.resume()
        
    }
}
