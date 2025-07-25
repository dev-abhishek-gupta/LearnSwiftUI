//
//  AppStorageDemo.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use AppStorage and SceneStorage for persistent state in SwiftUI
struct AppStorageDemo: View {
    // AppStorage persists data across app launches (UserDefaults)
    @AppStorage("username") private var username: String = ""
    // SceneStorage persists data for the current scene/session
    @SceneStorage("draftText") private var draftText: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter username", text: $username)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Saved username: \(username)")
                .foregroundColor(.blue)
            Divider()
            TextEditor(text: $draftText)
                .frame(height: 100)
                .border(Color.gray)
            Text("Draft (SceneStorage): \(draftText)")
                .foregroundColor(.purple)
        }
        .padding()
    }
}

struct AppStorageDemo_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageDemo()
    }
} 
