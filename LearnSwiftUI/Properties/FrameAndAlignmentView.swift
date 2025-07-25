//
//  FrameAndAlignmentView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 22/07/25.
//

import SwiftUI

/// Demonstrates the use of frame and alignment modifiers in SwiftUI.
struct FrameAndAlignmentView: View {
    var body: some View {
        VStack {
            // Text with multiple background and frame modifiers
            Text("Hello, World!")
                .foregroundStyle(.red) // Text color
                .background(.blue) // Background behind text
                .frame(width: 250, height: 250, alignment: .leading) // Set frame and align text to leading
                .background(.red) // Background behind the frame
                .cornerRadius(20) // Rounded corners for the frame
                .frame(maxWidth: .infinity, maxHeight: 500) // Expand to fill available width
                .background(.green) // Background behind the expanded frame
            
            // Rectangle with infinite width and fixed height
            Rectangle()
                .frame(width: .infinity, height: 100)
            
        }
    }
}

struct FrameAndAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameAndAlignmentView()
    }
}
