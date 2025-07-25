//
//  ForEachView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 22/07/25.
//

import SwiftUI

/// A model for fruits that conforms to Identifiable (for use with ForEach)
struct IdentifiableFruit: Identifiable {
    var id: String
    var name: String
}

/// A model for fruits that conforms to Hashable (for use with ForEach and id)
struct HashableFruit: Hashable {
    let id = UUID()
    let name: String
}

/// Demonstrates different ways to use ForEach in SwiftUI
struct ForEachView: View {
    // Array of fruit names (String)
    let fruits: [String] = ["Apples", "Bananas", "Oranges", "Mangoes"]
    
    // Array of IdentifiableFruit
    let identifiableFruits: [IdentifiableFruit] = [
        .init(id: "1", name: "Apples"),
        .init(id: "2", name: "Bananas"),
        .init(id: "3", name: "Oranges"),
        .init(id: "4", name: "Mangoes"),
    ]
    
    // Array of HashableFruit
    let hashableFruits: [HashableFruit] = [
        .init(name: "Apples"),
        .init(name: "Bananas"),
        .init(name: "Oranges"),
        .init(name: "Mangoes"),
    ]
    
    var body: some View {
        VStack {
            // ForEach with array of strings and explicit id
            HStack {
                ForEach(fruits, id: \.self) { fruit in
                    InitializerView(title: fruit)
                }
            }
            
            // ForEach with a range (by index)
            HStack {
                ForEach(0..<fruits.count) { index in
                    InitializerView(title: fruits[index])
                }
            }
            
            // ForEach with Identifiable model
            HStack {
                ForEach(identifiableFruits) { fruit in
                    InitializerView(title: fruit.name)
                }
            }
            
            // ForEach with Hashable model and explicit id
            HStack {
                ForEach(hashableFruits, id: \.id) { fruit in
                    InitializerView(title: fruit.name)
                }
            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
