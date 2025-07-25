//
//  AccessibilityDemo.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use accessibility modifiers in SwiftUI
struct AccessibilityDemo: View {
    @State private var isOn = false
    
    var body: some View {
        VStack(spacing: 20) {
            Toggle("Enable Feature", isOn: $isOn)
                .accessibilityLabel("Enable important feature")
                .accessibilityValue(isOn ? "On" : "Off")
                .accessibilityHint("Double tap to toggle the feature.")
            Image(systemName: isOn ? "checkmark.circle.fill" : "xmark.circle.fill")
                .resizable()
                .frame(width: 60, height: 60)
                .accessibilityHidden(true)
            Text(isOn ? "Feature is enabled" : "Feature is disabled")
                .accessibilityAddTraits(.isHeader)
        }
        .padding()
        .accessibilityElement(children: .combine)
    }
}

struct AccessibilityDemo_Previews: PreviewProvider {
    static var previews: some View {
        AccessibilityDemo()
    }
} 
