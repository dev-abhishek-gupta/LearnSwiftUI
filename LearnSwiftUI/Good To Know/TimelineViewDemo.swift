//
//  TimelineViewDemo.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use TimelineView and Canvas for dynamic drawing/animation in SwiftUI (iOS 15+)
struct TimelineViewDemo: View {
    var body: some View {
        TimelineView(.animation) { context in
            VStack(spacing: 20) {
                Text("Current Date: \(context.date.formatted(date: .omitted, time: .standard))")
                Canvas { ctx, size in
                    let seconds = Calendar.current.component(.second, from: context.date)
                    let angle = Angle.degrees(Double(seconds) * 6)
                    ctx.translateBy(x: size.width/2, y: size.height/2)
                    ctx.rotate(by: angle)
                    ctx.stroke(Path { path in
                        path.move(to: .zero)
                        path.addLine(to: CGPoint(x: 0, y: -40))
                    }, with: .color(.red), lineWidth: 4)
                }
                .frame(width: 100, height: 100)
                .border(Color.gray)
            }
        }
        .padding()
    }
}

struct TimelineViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TimelineViewDemo()
    }
} 
