//
//  ColorPickerView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use ColorPicker in SwiftUI for color selection.
struct ColorPickerView: View {
    // State variable for the selected color
    @State var selectedColor: Color = .red
    
    var body: some View {
        List {
            // Basic color picker with label
            ColorPicker("Select Color", selection: $selectedColor, supportsOpacity: false)
            // Color picker with a custom label (a colored circle)
            ColorPicker(selection: $selectedColor) {
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundStyle(selectedColor)
            }
        }
    }
}

#Preview {
    ColorPickerView()
}
