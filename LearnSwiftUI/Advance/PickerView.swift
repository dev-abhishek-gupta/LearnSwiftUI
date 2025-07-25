//
//  PickerView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Enum representing fruit options for the picker
enum Fruits: String, CaseIterable {
    case apple
    case banana
    case orange
}

/// Demonstrates how to use Picker in SwiftUI for selecting from a list of options.
struct PickerView: View {
    // State variable for the selected fruit
    @State var selectedItem: Fruits = .apple
    
    var body: some View {
        NavigationStack {
            // Picker with all fruit options
            Picker("Select Fruit", selection: $selectedItem) {
                ForEach(Fruits.allCases, id: \.self) { fruit in
                    Text(fruit.rawValue)
                }
            }
            .pickerStyle(.navigationLink)
            .padding()
        }
    }
}

#Preview {
    PickerView()
}
