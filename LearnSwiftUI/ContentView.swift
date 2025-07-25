//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 21/07/25.
//

import SwiftUI
import SwiftData

/// The main entry view for the app, demonstrating a master-detail list using NavigationSplitView and SwiftData.
struct ContentView: View {
    // Access the model context from the environment for data operations
    @Environment(\.modelContext) private var modelContext
    // Query all Item objects from the model
    @Query private var items: [Item]

    var body: some View {
        // NavigationSplitView provides a sidebar (master) and detail view (like iPad Mail app)
        NavigationSplitView {
            // Sidebar: List of items
            List {
                ForEach(items) { item in
                    // Each item is a navigation link to its detail
                    NavigationLink {
                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    } label: {
                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                    }
                }
                // Enable swipe-to-delete for items
                .onDelete(perform: deleteItems)
            }
            // Toolbar with edit and add buttons
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            // Detail view placeholder
            Text("Select an item")
        }
    }

    /// Adds a new item with the current date/time
    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    /// Deletes selected items from the list
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    // Preview with in-memory model container
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
