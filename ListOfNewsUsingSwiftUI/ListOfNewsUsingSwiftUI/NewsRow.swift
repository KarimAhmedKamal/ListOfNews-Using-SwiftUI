//
//  NewsRow.swift
//  ListOfNews_SwiftUI
//
//  Created by Mac on 20/01/2025.
//

import SwiftUI

struct NewsRow: View {

    var news: News

    var body: some View {
        
        VStack{
            
            HStack {
                Text(news.title).bold()
                Spacer()
            }.padding(.leading)

            HStack{
                Text("category:")
                Text(news.category)
                Spacer()
            }.padding(.leading)
            
        }
        
    }
}

#Preview {
    NewsRow(news: newsData[0])
}
