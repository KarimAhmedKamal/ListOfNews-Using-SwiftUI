//
//  NewsDescription.swift
//  ListOfNewsUsingSwiftUI
//
//  Created by Mac on 20/01/2025.
//

import SwiftUI

struct NewsDescription: View {
    var news : News
    var body: some View {
        
        HStack {
            Text(news.title).bold()
        }.padding(.leading)
        
        HStack{
            Text("category:")
            Text(news.category)
        }.padding(.leading)
        
        HStack{
            Text(news.description)
        }.padding()
    }
}

#Preview {
    NewsDescription(news: newsData[0])
}
