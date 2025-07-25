//
//  NavigationBar.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

struct NavigationBarView: View {
    @State var paths: [String] = []
    @State var text: String = ""
    
    var body: some View {
        NavigationStack(path: $paths) {
            ScrollView {
                TextField("Add name", text: $text)
                GridView()
                    .onTapGesture {
                        paths.append("1")
                    }
            }
            .navigationDestination(for: String.self, destination: { value in
                Text("Hello from \(value)")
            })
            .navigationBarTitle("Navigation Bar")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "heart.fill")
                }
            }
            .toolbarRole(.editor)
            .toolbarTitleMenu {
                Button("Screen 2") {
                    paths.append("2")
                }
                Button("Screen 3") {
                    paths.append("3")
                }
            }
        }
    }
}

#Preview {
    NavigationBarView()
}

struct GridView: View {
    let data = (1...100).map { "Item \($0)" }
    let columns = [GridItem(.adaptive(minimum: 80))]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(.indigo)
                    Text(item)
                }
            }.padding(.horizontal)
        }
    }
}

