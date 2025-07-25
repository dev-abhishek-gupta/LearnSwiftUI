//
//  ToggleView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use Toggle in SwiftUI for on/off switches.
struct ToggleView: View {
    // State variable for the toggle's value
    @State var isOn = false
    var body: some View {
        VStack {
            // Toggle with custom label, color, and hidden label
            Toggle("Toggle Label", isOn: $isOn)
                .padding(10)
                .background(Color.gray.opacity(0.2))
                .tint(.red)
                .labelsHidden()
                // Print value changes to the console
                .onChange(of: isOn) { oldValue, newValue in
                    print(oldValue, newValue)
                }
        }
    }
}

#Preview {
    ToggleView()
}
