//
//  ContentView.swift
//  NewsWithSwiftUI
//
//  Created by Alan Victor Paulino de Oliveira on 18/06/19.
//  Copyright © 2019 Alan Victor Paulino de Oliveira. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView : View {
    @ObjectBinding var service = Service()

    var body: some View {
        
        NavigationView {
            List(){
                HStack(alignment: .center) {
                    Spacer()
                    Text("Em Português")
                        .font(.largeTitle)
                    Spacer()
                }
                ForEach(service.articles.identified(by: \.author)) { articleRow in
                    ArticleCell(article: articleRow)
                }
            }.navigationBarTitle(Text("Lista de notícias"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
