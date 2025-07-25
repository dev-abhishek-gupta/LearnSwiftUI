//
//  MatchedGeometryEffectDemo.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use matchedGeometryEffect for advanced animations in SwiftUI
struct MatchedGeometryEffectDemo: View {
    @Namespace private var animation
    @State private var isExpanded = false
    
    var body: some View {
        VStack(spacing: 40) {
            if isExpanded {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.blue)
                    .matchedGeometryEffect(id: "shape", in: animation)
                    .frame(width: 300, height: 200)
                    .onTapGesture { withAnimation { isExpanded.toggle() } }
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.red)
                    .matchedGeometryEffect(id: "shape", in: animation)
                    .frame(width: 100, height: 100)
                    .onTapGesture { withAnimation { isExpanded.toggle() } }
            }
        }
        .padding()
        .animation(.spring(), value: isExpanded)
    }
}

struct MatchedGeometryEffectDemo_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectDemo()
    }
} 
