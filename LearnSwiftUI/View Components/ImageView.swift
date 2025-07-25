//
//  ImageView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 21/07/25.
//

import SwiftUI

/// Demonstrates how to use Image in SwiftUI with system images and modifiers.
struct ImageView: View {
    var body: some View {
        // System image with resizing, color, and shape modifiers
        Image(systemName: "star.fill")
            .resizable()
            .frame(width: 125, height: 125)
            .foregroundColor(.yellow)
            .scaledToFit()
            .clipShape(Rectangle())
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
