//
//  State.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 23/07/25.
//


import SwiftUI

struct StateView: View {
    @State private var count = 0
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Hello, World counter is \(count)")
            
            Button("Increment Counter") {
                count += 1
            }
        }
        
    }
}

#Preview {
    StateView()
}
