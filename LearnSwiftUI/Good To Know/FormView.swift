//
//  FormView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use Form in SwiftUI for data entry
struct FormView: View {
    @State private var name: String = ""
    @State private var age: Int = 18
    @State private var newsletter: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("Name", text: $name)
                    Stepper(value: $age, in: 0...100) {
                        Text("Age: \(age)")
                    }
                }
                Section(header: Text("Preferences")) {
                    Toggle("Subscribe to newsletter", isOn: $newsletter)
                }
                Section {
                    Button("Submit") {
                        // Handle form submission
                    }
                }
            }
            .navigationTitle("Form Example")
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
} 
