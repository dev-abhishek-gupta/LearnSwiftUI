//
//  AnimationView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 24/07/25.
//

import SwiftUI

struct AnimationView: View {
    
    @State private var isAnimated = false
    
    var body: some View {
        VStack(spacing:50) {
            Text (isAnimated ? "SwiftUI Animations - ON" : "SwiftUI Animations")
                .font(.headline)
                .padding()
            
            RoundedRectangle(cornerRadius: isAnimated ? 100 : 50)
                .frame(width: 200, height: 200)
                .foregroundColor(isAnimated ? .red : .yellow)
                .rotationEffect(isAnimated ? .degrees(360) : .zero)
                .scaleEffect(isAnimated ? 1.5 : 1.0)
                .opacity(isAnimated ? 0.5 : 1.0)
                .animation(.easeInOut(duration: 5.0), value: isAnimated)
                .onTapGesture {
                    //withAnimation(.easeInOut(duration: 5.0)) {
                        isAnimated.toggle()
                    //}
                }
            
            Spacer()
        }
        .padding(50)
    }
}
    
    #Preview {
        AnimationView()
    }
