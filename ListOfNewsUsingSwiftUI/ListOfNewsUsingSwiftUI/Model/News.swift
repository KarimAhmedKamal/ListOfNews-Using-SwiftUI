//
//  News.swift
//  ListOfNews_SwiftUI
//
//  Created by Mac on 20/01/2025.
//

import Foundation
import SwiftUI

struct News : Identifiable, Codable {
    var id : Int
    var category : String
    var title : String
    var description : String
}
