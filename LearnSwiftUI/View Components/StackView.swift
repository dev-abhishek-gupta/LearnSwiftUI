//
//  StackView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 22/07/25.
//

import SwiftUI

/// Demonstrates how to use VStack, HStack, and ZStack in SwiftUI for layout.
struct StackView: View {
    var body: some View {
        VStack {
            // VStack: vertical stack
            VStack(alignment: .center, spacing: 20)  {
               Text( "Hello, World!" )
               Text("hello abhishek")
            }
            // HStack: horizontal stack
            HStack(alignment: .center, spacing: 20)  {
                Text( "Hello, World!" )
                Text("hello abhishek")
            }
            // ZStack: overlays views on top of each other
            ZStack(alignment: .center)  {
                Circle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                Text("hello abhishek")
            }
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
