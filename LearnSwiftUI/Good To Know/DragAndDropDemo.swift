//
//  DragAndDropDemo.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//

import SwiftUI
import UniformTypeIdentifiers

/// Demonstrates how to use drag and drop in SwiftUI
struct DragAndDropDemo: View {
    @State private var items: [String] = ["🍎", "🍌", "🍊", "🍇"]
    @State private var droppedItem: String? = nil
    
    var body: some View {
        HStack(spacing: 40) {
            VStack(spacing: 20) {
                Text("Draggable Items")
                    .font(.headline)
                ForEach(items, id: \.self) { item in
                    Text(item)
                        .font(.largeTitle)
                        .onDrag { NSItemProvider(object: item as NSString) }
                }
            }
            VStack(spacing: 20) {
                Text("Drop Here")
                    .font(.headline)
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.blue.opacity(0.2))
                    .frame(width: 100, height: 100)
                    .overlay(
                        Text(droppedItem ?? "?")
                            .font(.largeTitle)
                    )
                    .onDrop(of: [UTType.text], isTargeted: nil) { providers in
                        if let provider = providers.first {
                            _ = provider.loadObject(ofClass: NSString.self) { object, _ in
                                if let str = object as? String {
                                    droppedItem = str
                                }
                            }
                            return true
                        }
                        return false
                    }
            }
        }
        .padding()
    }
}

struct DragAndDropDemo_Previews: PreviewProvider {
    static var previews: some View {
        DragAndDropDemo()
    }
} 
