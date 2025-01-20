//
//  Service.swift
//  ListOfNews_SwiftUI
//
//  Created by Mac on 20/01/2025.
//

import Foundation

var newsData : [News] = load("newsData.json")

func load <T: Decodable> (_ filename : String) -> T {
    
    var data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("couldn't open file \(filename)")
    }
    
    do{
        data = try Data(contentsOf: file)
    }
    catch {
        fatalError("couldn't open the file !!")
    }
    
    do{
        return try JSONDecoder().decode(T.self, from: data)
    }
    catch {
        fatalError("Couldn't decode the file")
    }
}
