//
//  InitializerView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 22/07/25.
//

import SwiftUI

/// Demonstrates how to use a custom initializer in a SwiftUI view.
/// This view displays a stylized rectangle with a title.
struct InitializerView: View {
    /// The title to display inside the view
    let title: String
    
    var body: some View {
        ZStack {
            // Background rectangle with gradient and rounded corners
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    LinearGradient(colors: [.yellow, .blue], startPoint: .leading, endPoint: .bottom)
                )
                .cornerRadius (20)
                .frame(width: .infinity, height: 100)
            // Title text with styling
            Text(title)
                .font(.title)
                .foregroundColor(.white)
                .bold()
                .italic()
        }.padding()
    }
}

struct InitializerView_Previews: PreviewProvider {
    static var previews: some View {
        InitializerView(title: "Abhishek Gupta")
    }
}
