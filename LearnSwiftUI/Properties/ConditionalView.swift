//
//  ConditionalView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 24/07/25.
//

import SwiftUI

/// Demonstrates conditional rendering in SwiftUI using if-else and @State.
struct ConditionalView: View {
    // Tracks whether the user is logged in
    @State private var isLoggedIn = false
    
    var body: some View {
        VStack {
            // Show different content based on login state
            if isLoggedIn {
                // Welcome screen when logged in
                ZStack {
                    Rectangle()
                        .frame(width: 300, height: 300)
                        .foregroundStyle (Color.orange)
                        .clipShape(Capsule())
                    Text ("Welcome! Abhishek Gupta")
                }
            } else {
                // Prompt to log in
                Text ("Please log in.")
            }
        }
        // Button to toggle login state
        Button(action: {
            // Toggle the login state
            isLoggedIn.toggle()
        })  {
            Text(isLoggedIn ? "Logout" : "Login")
        }
    }
}

#Preview {
    ConditionalView()
}

