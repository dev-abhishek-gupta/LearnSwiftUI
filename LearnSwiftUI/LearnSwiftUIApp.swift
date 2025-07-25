//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 21/07/25.
//

import SwiftUI
import SwiftData

/// The main entry point for the SwiftUI app.
/// Sets up the data model and root view.
@main
struct LearnSwiftUIApp: App {
    // Shared model container for SwiftData, used throughout the app
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self, // Register the Item model
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            // Try to create the model container
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        // The main window group for the app
        WindowGroup {
            // Set the initial/root view of the app
            //NavigationPersentView()
            DragAndDropDemo()
        }
        // Inject the model container into the environment
        .modelContainer(sharedModelContainer)
    }
}
