//
//  ContextMenuView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 25/07/25.
//
 
import SwiftUI

/// Demonstrates how to use ContextMenu in SwiftUI for right-click or long-press menus.
struct ContextMenuView: View {
    
    var body: some View {
        // Text view with a context menu
        Text("View")
            .contextMenu {
                // Button for marking as favourite
                Button("Mark as favourite") {
                    print("Mark as favourite")
                }
                // Destructive button for delete action
                Button(role: .destructive) {
                    // Delete action
                } label: {
                    HStack {
                        Text("Delete")
                        Image(systemName: "trash")
                    }
                }
            }
    }
}

#Preview {
    ContextMenuView()
}
