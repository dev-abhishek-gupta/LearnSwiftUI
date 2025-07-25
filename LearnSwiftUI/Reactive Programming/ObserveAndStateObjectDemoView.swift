//
//  ObserveAndStateObjectDemoView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var heroName: [String] = []
    
    init() {
        heroName = ["thor", "hulk", "ironman", "captain america"]
    }
    
    func addNewName(_ name: String) {
        heroName.append(name)
    }
}

struct ObserveAndStateObjectDemoView: View {
    @StateObject var viewModel = ViewModel()
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            List(viewModel.heroName, id: \.self){ heroName in
                Text(heroName)
            }
            .navigationTitle("Hero Name")
            .toolbar {
                Button {
                    viewModel.addNewName("Black Panther")
                } label: {
                    Image(systemName: "plus")
                        .tint(.black)
                }
                
                Button {
                    paths.append("Favourite Screen")
                } label: {
                    Image(systemName: "heart.fill")
                        .tint(.black)
                }

            }.navigationDestination(for: String.self) { _ in
                FavouriteScreen(viewModel: viewModel)
            }
        }
    }
}

struct FavouriteScreen: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        Text("Favourite Screen").onAppear(
            perform: {
                print("Favourite Screen Loaded \(viewModel.heroName)")
            }
        )
        
    }
}

#Preview {
    ObserveAndStateObjectDemoView()
}
