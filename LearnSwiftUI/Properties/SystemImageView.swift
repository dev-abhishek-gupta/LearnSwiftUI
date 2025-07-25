//
//  SystemImageView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 22/07/25.
//

import SwiftUI

/// Demonstrates how to use SF Symbols (system images) in SwiftUI.
struct SystemImageView: View {
    var body: some View {
        // Display a resizable SF Symbol with custom color and size
        Image(systemName: "square.and.arrow.up.badge.checkmark")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .foregroundColor(.red)
    }
}

struct SystemImageView_Previews: PreviewProvider {
    static var previews: some View {
        SystemImageView()
    }
}
