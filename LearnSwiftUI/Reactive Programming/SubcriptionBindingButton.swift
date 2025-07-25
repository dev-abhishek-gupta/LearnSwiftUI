//
//  SubcriptionBindingButton.swift
//  LearnSwiftUI
//
//  Created by Abhishek Gupta on 24/07/25.
//

import SwiftUI


struct HeaderView: View {
    @State var isSubscribed: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "trash.circle.fill")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.yellow)
                .aspectRatio(contentMode: ContentMode.fill)
                .clipShape(Circle())
                .overlay (content: {
                    Circle().stroke(isSubscribed ? Color.red : Color.gray, lineWidth: 10)
                 })
            
            SubcriptionBindingButton(isSubscribed: $isSubscribed)
        }
        
    }
}

struct SubcriptionBindingButton: View {
    @Binding var isSubscribed: Bool
    
    var body: some View {
        Button {
            isSubscribed.toggle()
        } label: {
            HStack {
                Text(isSubscribed ? "Subscribed" : "Subscribe")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(isSubscribed ?.red : .white)
            }
            .padding()
            .background(isSubscribed ? Color.gray.opacity(0.3) : Color.red)
            .cornerRadius (10)
        }
    }
}

#Preview {
    HeaderView(isSubscribed: true)
}
