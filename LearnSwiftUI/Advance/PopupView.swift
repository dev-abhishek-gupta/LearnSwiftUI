//
//  PopupView.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 24/07/25.
//

import SwiftUI

struct PopupView: View {
    @State var showSheet: Bool = false
    @State var showPopover: Bool = false
    
    var body: some View {
        VStack {
            Text("View")
            Button {
                showSheet.toggle()
            } label: {
                Text("Present Sheet")
            }.sheet(isPresented: $showSheet) {
                Text("Sheet Presented")
            }
            
            Button {
                showPopover.toggle()
            } label: {
                Text("Present Popover")
            }.popover(isPresented: $showPopover) {
                Text("Popover Presented")
            }
        }
    }
}

#Preview {
    PopupView()
}
