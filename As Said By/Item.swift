//
//  Item.swift
//  As Said By
//
//  Created by Alonso Huerta on 29/02/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
