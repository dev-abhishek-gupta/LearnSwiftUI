//
//  LazyVStackView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 23/07/25.
//

import SwiftUI

/// Demonstrates how to use LazyVStack for efficient vertical lists in SwiftUI.
struct LazyVStackView: View {
    var body: some View {
        // ScrollView with a vertical LazyVStack
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
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
                    // Print when each item appears (for demo)
                    .onAppear {
                        print("index \(index) appeared")
                    }
                }
            }
        }
        .background(.blue)
        .frame(width: .infinity, height: .infinity)
    }
}

struct LazyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackView()
    }
}
