//
//  Item.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 21/07/25.
//

import Foundation
import SwiftData

/// A simple data model representing an item with a timestamp.
/// Used for demonstrating SwiftData integration in the app.
@Model
final class Item {
    /// The date and time when the item was created
    var timestamp: Date
    
    /// Initializes a new Item with the given timestamp
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
