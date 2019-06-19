//
//  Image+DownloadFromURL.swift
//  NewsWithSwiftUI
//
//  Created by Alan Victor Paulino de Oliveira on 18/06/19.
//  Copyright © 2019 Alan Victor Paulino de Oliveira. All rights reserved.
//

import SwiftUI

extension Image{
    init(downlaodFromUrl url: String){
        
    }
    
    private func createUIImage(fromURL url: String) -> UIImage{
        
        guard let url = URL(string: url), let data = try? Data(contentsOf: url) else{
            return UIImage()
        }
        
        let image = UIImage(data: data)
        
        
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
}
