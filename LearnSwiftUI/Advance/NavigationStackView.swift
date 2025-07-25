//
//  NavigationStackView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 24/07/25.
//

import SwiftUI

struct Person: Hashable {
    let name: String
}

struct NavigationStackView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, World!")
            
            NavigationLink("Destination") {
                Text("Destination")
            }
            
            NavigationLink(value: "Abhishek Gupta") {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 200, height: 50)
                        .foregroundStyle(.red)
                    Text("Navigate")
                        .foregroundStyle(.white)
                }
            }.navigationDestination(for: String.self) { value in
                Text("Destination Screen: \(value)")
            }
            
            NavigationLink(value: 786) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 200, height: 50)
                        .foregroundStyle(.red)
                    Text("Navigate 2")
                        .foregroundStyle(.white)
                }
            }.navigationDestination(for: Int.self) { value in
                Text("Destination Screen: \(value)")
            }
            
            NavigationLink(value: Person(name: "Raju Puri")) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 200, height: 50)
                        .foregroundStyle(.red)
                    Text("Navigate 3")
                        .foregroundStyle(.white)
                }
            }.navigationDestination(for: Person.self) { value in
                Text("Destination Screen: \(value.name)")
            }
        }
    }
}

struct NavigationStackPathView: View {
    @State var stack: [String] = []
    
    var body: some View {
        NavigationStack(path: $stack) {
            VStack {
                Text("Navigate 4")
                Button {
                    stack.append("New item 1")
                } label: {
                    Text("Button to navigate")
                }
            }.navigationDestination(for: String.self) { value in
                Text("Destination Screen: \(value)")
            }
            
            VStack {
                Text("Navigate 5")
                Button {
                    stack.append(contentsOf: ["New item 1","New item 2", "New item 3", "New item 4"])
                } label: {
                    Text("Button to navigate")
                }
            }.navigationDestination(for: String.self) { value in
                Text("Destination Screen: \(value)")
            }
        }
    }
}

struct NavigationPersentView: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button(action: {
                    isPresented.toggle()
                }) {
                    Text("Present")
                }
            }.navigationDestination(isPresented: $isPresented) {
                Text("Presented Destination")
            }
        }
    }
}

#Preview {
    NavigationPersentView()
}
