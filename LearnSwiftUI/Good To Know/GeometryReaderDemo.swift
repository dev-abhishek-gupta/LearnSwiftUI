//
//  GeometryReaderDemo.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use GeometryReader for layout in SwiftUI
struct GeometryReaderDemo: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 20) {
                Text("Width: \(Int(geometry.size.width))")
                Text("Height: \(Int(geometry.size.height))")
                Rectangle()
                    .fill(Color.green)
                    .frame(width: geometry.size.width * 0.8, height: 50)
                    .overlay(Text("80% width").foregroundColor(.white))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.yellow.opacity(0.2))
        }
        .navigationTitle("GeometryReader Demo")
    }
}

struct GeometryReaderDemo_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderDemo()
    }
} 
