//
//  IgnoreSafeAreaView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 21/07/25.
//

import SwiftUI

/// Demonstrates how to use edgesIgnoringSafeArea to extend content into the safe area in SwiftUI.
struct IgnoreSafeAreaView: View {
    var body: some View {
        // The red color will extend into the top and bottom safe areas
        Color.red.opacity(0.2).edgesIgnoringSafeArea([.top, .bottom])
        // To ignore all safe areas, use: .edgesIgnoringSafeArea(.all)
    }
}

struct IgnoreSafeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        IgnoreSafeAreaView()
    }
}
