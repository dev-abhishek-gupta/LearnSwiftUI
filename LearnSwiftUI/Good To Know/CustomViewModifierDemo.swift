//
//  RoundedBorderModifier.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// A custom view modifier that applies a rounded border and shadow
struct RoundedBorderModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.blue.opacity(0.1))
            .cornerRadius(12)
            .shadow(radius: 4)
    }
}

extension View {
    /// Easy way to apply the custom modifier
    func roundedBorder() -> some View {
        self.modifier(RoundedBorderModifier())
    }
}

/// Demonstrates how to use a custom ViewModifier in SwiftUI
struct CustomViewModifierDemo: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Custom ViewModifier")
                .roundedBorder()
            Button("Click Me") {}
                .roundedBorder()
        }
        .padding()
    }
}

struct CustomViewModifierDemo_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewModifierDemo()
    }
} 
