//
//  SliderDemoView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use Slider in SwiftUI for selecting a value from a range.
struct SliderDemoView: View {
    // State variable for the slider's value
    @State var sliderValue: Double = 20
    
    var body: some View {
        List {
            // Display the current slider value
            Text("Select Life expectancy \(Int(sliderValue))")
            // Slider with value binding and custom labels
            Slider(value: $sliderValue, in: 0...70) {
                Text("Select Life value")
            } minimumValueLabel: {
                Text("Min 0")
            } maximumValueLabel: {
                Text("Max 70")
            }
        }
    }
}

#Preview {
    SliderDemoView()
}
