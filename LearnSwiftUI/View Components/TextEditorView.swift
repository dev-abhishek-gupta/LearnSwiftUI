//
//  TextEditorView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 21/07/25.
//
import SwiftUI

/// Demonstrates how to use TextEditor in SwiftUI for multi-line text input.
struct TextEditorView: View {
    // State variable for the text input
    @State private var inputText = ""
    
    var body: some View {
        VStack {
            // Multi-line text editor
            TextEditor(text: $inputText)
                .frame(width: 300, height: 300)
                .border(Color.gray)
                .scrollContentBackground(.hidden)
                .background(Color.gray.opacity(0.1))
                .multilineTextAlignment(.center)
                .lineSpacing(10)
                .padding()
            // Display the current input text
            Text(inputText)
        }.padding()
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
