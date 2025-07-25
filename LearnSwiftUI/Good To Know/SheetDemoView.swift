//
//  SheetDemoView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to present a modal sheet in SwiftUI
struct SheetDemoView: View {
    @State private var showSheet = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Sheet Demo")
                .font(.largeTitle)
            Button("Present Sheet") {
                showSheet = true
            }
        }
        .sheet(isPresented: $showSheet) {
            // Content of the sheet
            VStack {
                Text("This is a modal sheet!")
                    .font(.title)
                Button("Dismiss") {
                    showSheet = false
                }
            }
            .padding()
        }
    }
}

struct SheetDemoView_Previews: PreviewProvider {
    static var previews: some View {
        SheetDemoView()
    }
} 
