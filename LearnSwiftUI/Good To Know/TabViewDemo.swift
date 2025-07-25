//
//  TabViewDemo.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

/// Demonstrates how to use TabView for tab-based navigation in SwiftUI
struct TabViewDemo: View {
    var body: some View {
        TabView {
            Text("Home Tab")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Search Tab")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            Text("Profile Tab")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

struct TabViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDemo()
    }
} 
