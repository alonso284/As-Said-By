//
//  Models.swift
//  As Said By
//
//  Created by Alonso Huerta on 23/02/25.
//

import Foundation
import SwiftData

@Model
final class Author {
    var name: String
    var nationality: String
    
    init(name: String, nationality: String) {
        self.name = name
        self.nationality = nationality
    }
}

@Model
final class Quote {
    var text: String
    var author: Author?
    var time: Date?
    var place: String?
    
    init(text: String, author: Author? = nil, time: Date? = nil, place: String? = nil) {
        self.text = text
        self.author = author
        self.time = time
        self.place = place
    }
}

