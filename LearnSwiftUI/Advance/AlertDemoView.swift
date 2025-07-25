//
//  AlertDemoView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use Alert in SwiftUI for showing alerts with different configurations.
struct AlertDemoView: View {
    // State variables to control alert presentation
    @State var showAlertOnlyTitle = false
    @State var showAlertWithMessage = false
    @State var showAlertWithButton = false
    @State var textFieldValue: String = ""
    
    var body: some View {
        VStack {
            // Button to show alert with only a title
            Button("Only Title") {
                showAlertOnlyTitle.toggle()
            }
            .alert("Only Title", isPresented: $showAlertOnlyTitle) {
                // No buttons
            }
            
            // Button to show alert with title and message
            Button("Title and message") {
                showAlertWithMessage.toggle()
            }
            .alert("Title", isPresented: $showAlertWithMessage) {
                // No buttons
            } message: {
                Text("message")
            }

            // Button to show alert with title, message, and custom buttons
            Button("Title, message and custom button") {
                showAlertWithButton.toggle()
            }
            .alert("Title", isPresented: $showAlertWithButton) {
                Button("Button", role: .destructive) {
                    // Destructive action
                }
                
                Button("cancel", role: .cancel) {
                    // Cancel action
                }
                
                Button("okay", role: .none) {
                    // Okay action
                }
                
                // TextField inside the alert (iOS 15+)
                TextField("enter text", text: $textFieldValue)
                
            } message: {
                Text("message")
            }
        }
    }
}

#Preview {
    AlertDemoView()
}
