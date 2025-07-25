//
//  EnvironmentObjectDemoView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var name: String = "Abhishek"
}

struct ParentView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationStack {
            Text(userData.name)
            NavigationLink("Go to screen 1", destination: ChildView1())
        }
        .environmentObject(userData)
    }
}

struct ChildView1: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack {
            NavigationLink("Go to screen 2", destination: ChildView2())
        }
    }
}

struct ChildView2: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack {
            NavigationLink("Go to screen 2", destination: LastView()).onAppear(
                perform: {
                    userData.name = "Updated Name"
                }
            )
            
        }
    }
}

struct LastView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        Text("Last View \(userData.name)")
    }
}

#Preview(body: {
    ParentView()
})
