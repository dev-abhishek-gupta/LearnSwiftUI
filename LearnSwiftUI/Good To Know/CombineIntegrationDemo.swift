//
//  CombineIntegrationDemo.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI
import Combine

/// Demonstrates how to integrate Combine publishers with SwiftUI
struct CombineIntegrationDemo: View {
    @StateObject private var viewModel = CombineViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Type something...", text: $viewModel.input)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Uppercased: \(viewModel.uppercased)")
                .foregroundColor(.blue)
        }
        .padding()
    }
}

class CombineViewModel: ObservableObject {
    @Published var input: String = ""
    @Published var uppercased: String = ""
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        $input
            .map { $0.uppercased() }
            .assign(to: &$uppercased)
    }
}

struct CombineIntegrationDemo_Previews: PreviewProvider {
    static var previews: some View {
        CombineIntegrationDemo()
    }
} 
