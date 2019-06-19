//
//  ImageViewWidget.swift
//  NewsWithSwiftUI
//
//  Created by Alan Victor Paulino de Oliveira on 18/06/19.
//  Copyright © 2019 Alan Victor Paulino de Oliveira. All rights reserved.
//

import SwiftUI

struct ImageViewWidget : View {
    @ObjectBinding var imageLoader: ImageLoader
    
    init(imageUrl: String) {
        imageLoader = ImageLoader(imageUrl: imageUrl)
    }
    
    var body: some View {
        Image(uiImage: (imageLoader.data.count == 0) ? UIImage(named: "imageDefault")! :  UIImage(data: imageLoader.data)!)
            .resizable()
            .frame(width: 400, height: 400)
            .shadow(radius: 5)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(8)
    }
}

#if DEBUG
struct ImageViewWidget_Previews : PreviewProvider {
    static var previews: some View {
        ImageViewWidget(imageUrl: "https://media-manager.noticiasaominuto.com/1280/1560841980/naom_5cf0dc4648f7c.jpg?crop_params=eyJwb3J0cmFpdCI6eyJjcm9wV2lkdGgiOjk2MCwiY3JvcEhlaWdodCI6MTY5MywiY3JvcFgiOjEzNjgsImNyb3BZIjowfSwibGFuZHNjYXBlIjp7ImNyb3BXaWR0aCI6MjU2MCwiY3JvcEhlaWdodCI6MTQzOSwiY3JvcFgiOjAsImNyb3BZIjoxNDl9fQ==")
    }
}
#endif
