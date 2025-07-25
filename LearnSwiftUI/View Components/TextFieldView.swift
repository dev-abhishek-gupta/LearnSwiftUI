//
//  TextFieldView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 21/07/25.
//

import SwiftUI

/// Demonstrates how to use TextField in SwiftUI for single-line text input.
struct TextFieldView: View {
    // State variable for the text input
    @State private var inputText = ""
    
    var body: some View {
        VStack {
            // Single-line text field with editing change handler
            TextField("Enter User Name", text: $inputText, onEditingChanged: { bool in
                print("Editing changed \(bool)")
            })
            .textFieldStyle(.roundedBorder)
            .padding(10)
            // Display the current input text
            Text(inputText)
            // Button to dismiss the keyboard
            Button("Done") {
                UIApplication.shared.endEditing()
            }
        }
    }
}

// Extension to dismiss the keyboard
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIApplication.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct TextInputView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
