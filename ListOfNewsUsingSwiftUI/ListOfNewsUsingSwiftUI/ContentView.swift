//
//  ContentView.swift
//  ListOfNewsUsingSwiftUI
//
//  Created by Mac on 20/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView{
            List(newsData) { news in
                NavigationLink(destination: { NewsDescription(news: news)
                }, label: {
                    NewsRow(news: news)
                })
                
    //            NewsRow(news: news)

            }
        }
        

    }
}

#Preview {
    ContentView()
}
