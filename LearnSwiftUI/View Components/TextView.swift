//
//  TextView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 21/07/25.
//

import SwiftUI

/// Demonstrates how to use Text in SwiftUI with various modifiers.
struct TextView: View {
    var body: some View {
        // Text with multiple modifiers for style and layout
        Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!")
            .foregroundColor(.blue) // Text color
            .font(.largeTitle) // Font size
            .bold() // Bold text
            .italic() // Italic text
            .lineLimit(5) // Maximum number of lines
            .minimumScaleFactor(0.8) // Minimum scale for text
            .baselineOffset(20) // Vertical offset
            .kerning(0.5) // Letter spacing
            .multilineTextAlignment(.center) // Center alignment
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
