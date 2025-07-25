//
//  MenuDemo.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use Menu for context actions in SwiftUI
struct MenuDemo: View {
    @State private var selected = "None"
    
    var body: some View {
        VStack(spacing: 20) {
            Menu("Actions") {
                Button("Edit") { selected = "Edit" }
                Button("Delete", role: .destructive) { selected = "Delete" }
                Menu("More") {
                    Button("Share") { selected = "Share" }
                    Button("Duplicate") { selected = "Duplicate" }
                }
            }
            Text("Selected: \(selected)")
        }
        .padding()
    }
}

struct MenuDemo_Previews: PreviewProvider {
    static var previews: some View {
        MenuDemo()
    }
} 
