//
//  StepperView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use Stepper in SwiftUI for incrementing/decrementing values.
struct StepperView: View {
    // State variable for a simple integer value
    @State var value: Int = 1
    // State variable for font size
    @State var fontSize: CGFloat = 15
    
    var body: some View {
        List {
            // Display the current font size
            Text("Font size: \(fontSize)")
                .font(.system(size: fontSize))
            // Basic stepper for incrementing/decrementing value
            Stepper("Increase quantity \(value)", value: $value)
            // Stepper with custom increment/decrement actions and animation
            Stepper("Increase font size +-5") {
                withAnimation {
                    fontSize += 5
                }
            } onDecrement: {
                withAnimation {
                    fontSize -= 5
                }
            }
        }
    }
}

#Preview {
    StepperView()
}
