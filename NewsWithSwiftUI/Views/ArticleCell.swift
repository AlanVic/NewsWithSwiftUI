//
//  ArticleCell.swift
//  NewsWithSwiftUI
//
//  Created by Alan Victor Paulino de Oliveira on 18/06/19.
//  Copyright © 2019 Alan Victor Paulino de Oliveira. All rights reserved.
//

import SwiftUI

struct ArticleCell : View {
    var article: Article
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(article.title)
                .lineLimit(nil)
                .font(.title)
//                .frame(height: 300)
          ImageViewWidget(imageUrl: article.urlToImage)
            Text(article.articleDescription)
                .font(.headline)
                .lineLimit(nil)
            

        }
    }
}

#if DEBUG
struct ArticleCell_Previews : PreviewProvider {
    static var previews: some View {
        Group{
            ArticleCell(article: Article(
                source: nil,
                author: nil,
                title: "Title sdpfjs aslvkmarle asdlv kerva'snd v;la k",
                articleDescription: "Here is a description",
                url: "nullinha",
                urlToImage: "https://media-manager.noticiasaominuto.com/1280/1560841980/naom_5cf0dc4648f7c.jpg?crop_params=eyJwb3J0cmFpdCI6eyJjcm9wV2lkdGgiOjk2MCwiY3JvcEhlaWdodCI6MTY5MywiY3JvcFgiOjEzNjgsImNyb3BZIjowfSwibGFuZHNjYXBlIjp7ImNyb3BXaWR0aCI6MjU2MCwiY3JvcEhlaWdodCI6MTQzOSwiY3JvcFgiOjAsImNyb3BZIjoxNDl9fQ==",
                publishedAt: "2019-06-19T09:38:24Z",
                content: nil)
            )
        }
        
    }
}
#endif
