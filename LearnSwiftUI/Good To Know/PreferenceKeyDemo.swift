//
//  PreferenceKeyDemo.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use PreferenceKey to pass data up the view hierarchy in SwiftUI
struct PreferenceKeyDemo: View {
    @State private var childWidth: CGFloat = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Parent View")
                .font(.headline)
            ChildView()
                .backgroundPreferenceValue(WidthPreferenceKey.self) { anchor in
                    GeometryReader { proxy in
                        let frame = proxy[anchor!]
                        Color.clear
                            .onAppear {
                                childWidth = frame.width
                            }
                    }
                }
            Text("Child width: \(Int(childWidth))")
        }
        .padding()
    }
}

struct ChildView: View {
    var body: some View {
        Text("Child View")
            .padding()
            .background(Color.yellow)
            .anchorPreference(key: WidthPreferenceKey.self, value: .bounds) { anchor in
                anchor // Just pass the anchor, not width yet
            }
    }
}

struct WidthPreferenceKey: PreferenceKey {
    static var defaultValue: Anchor<CGRect>? = nil
    static func reduce(value: inout Anchor<CGRect>?, nextValue: () -> Anchor<CGRect>?) {
        value = nextValue()
    }
}

struct PreferenceKeyDemo_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKeyDemo()
    }
}
