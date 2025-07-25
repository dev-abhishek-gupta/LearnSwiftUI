//
//  ListView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Model representing a Marvel character, conforming to Identifiable for use in lists
struct MarvelCharacter: Identifiable {
    let id = UUID()
    let name: String
}

/// Demonstrates how to use List in SwiftUI for displaying collections of data.
struct ListView: View {
    // Array of character names (String)
    let marvelCharacters: [String] = ["Captain america", "Iron Man", "Thor"]
    // Array of MarvelCharacter models
    let characters: [MarvelCharacter] = [
        MarvelCharacter(name: "Captain america"),
        MarvelCharacter(name: "Iron Man"),
        MarvelCharacter(name: "Thor"),
        MarvelCharacter(name: "Spider Man"),
    ]
    
    var body: some View {
        NavigationStack {
            // Basic List with static and dynamic sections
            List {
                // Static section
                Section("Section 1") {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                // Dynamic section using ForEach
                Section("Section 2")  {
                    ForEach(0..<10) { value in
                        Text("Dynamic Text, \(value)")
                    }
                }
            }
            // List from array of strings
            List(marvelCharacters, id: \.self) { character in
                Text("\(character)")
            }
            .listStyle(.grouped)
            // List from array of Identifiable models
            List(characters) { character in
                Text("\(character)")
            }
            .listStyle(.sidebar)
            .navigationTitle("Marvel")
        }
    }
}

#Preview {
    ListView()
}
