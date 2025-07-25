//
//  ButtonView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 21/07/25.
//

import SwiftUI

/// Demonstrates how to use Button in SwiftUI with different label types.
struct ButtonView: View {
    var body: some View {
        // Button with multiple label elements
        Button {
            // Action when button is tapped
            print("Tap Me")
        } label: {
            // 1. Simple text label
            Text("Tap Me")
            // 2. Image and text label
            Image(systemName: "star")
            Text("Hello")
            // 3. Custom shape as label
            Circle().frame(width: 30, height: 30)
        }
        // Style the button
        .padding()
        .foregroundStyle(.red)
        .background(Color.yellow)
        .clipShape(Capsule())
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
