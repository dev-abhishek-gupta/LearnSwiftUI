//
//  GradientView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 21/07/25.
//

import SwiftUI

/// Demonstrates how to use different types of gradients in SwiftUI.
struct GradientView: View {
    var body: some View {
        VStack {
            // Linear gradient background
            Rectangle()
                .foregroundStyle(.clear)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.red, .yellow, .pink, .blue]),
                                   startPoint: .top,
                                   endPoint: .trailing)
                )
                .frame(width: 200, height: 200)
            // Angular gradient background
            Rectangle()
                .foregroundStyle(.clear)
                .background(
                    AngularGradient(colors: [.red, .yellow, .pink, .blue], center: .center, startAngle: .degrees(120), endAngle: .degrees(270))
                )
                .frame(width: 200, height: 200)
            // Radial gradient background
            Rectangle()
                .foregroundStyle(.clear)
                .background(
                    RadialGradient(colors: [.red, .yellow, .pink, .blue], center: .center, startRadius: 15, endRadius: 120)
                )
                .frame(width: 200, height: 200)
            // Linear gradient with stops
            Rectangle()
                .foregroundStyle(.clear)
                .background(
                    LinearGradient(stops: [Gradient.Stop(color: .gray, location: 0), Gradient.Stop(color: .pink, location: 0.1), Gradient.Stop(color: .pink, location: 0.8)], startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: 200, height: 200)
        }.padding()
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
