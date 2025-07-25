//
//  ScrollExampleView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 22/07/25.
//

import SwiftUI

/// Demonstrates how to use ScrollView in SwiftUI for vertical scrolling content.
struct ScrollExampleView: View {
    var body: some View {
        // Vertical ScrollView without scroll indicators
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(0..<20) { index in
                    ZStack {
                        // Gradient background for each item
                        LinearGradient(colors: [.red, .yellow], startPoint: .leading, endPoint: .bottom)
                            .cornerRadius(20)
                        Text("\(index)")
                            .font(.largeTitle)
                    }
                    .frame(width: .infinity, height: 100)
                    .padding()
                }
            }
        }
        .background(.blue)
        .frame(width: .infinity, height: .infinity)
    }
}

struct ScrollExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollExampleView()
    }
}
