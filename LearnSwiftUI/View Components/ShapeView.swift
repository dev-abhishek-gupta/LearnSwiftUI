//
//  ShapeView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 21/07/25.
//

import SwiftUI

/// Demonstrates how to use and customize basic shapes in SwiftUI.
struct ShapeView: View {
    var body: some View {
        VStack {
            // Circle shape
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            // Rectangle with overlay stroke
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
                .overlay {
                    Rectangle()
                        .stroke(Color.black, lineWidth: 4)
                }
            // Capsule shape
            Capsule()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            // RoundedRectangle shape
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
            // Ellipse shape
            Ellipse()
                .fill(Color.purple)
                .frame(width: 100, height: 100)
        }
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
