//
//  SwiftUIView.swift
//  SwiftTestApp
//
//  Created by Luka Babunadze on 26.02.25.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        HStack(){
            Text("Task 1")
                .font(.title)
                .fontWeight(.medium)
                .padding(.leading, 16)
            
            Spacer()
            Circle()
                .stroke(lineWidth: 2)
                .frame(width: 40, height: 40)
                .background(.green)
                .clipShape(Circle())
                .padding(.trailing, 16)
        }
        .frame(height: 60)
        .background(Color.gray)
        .cornerRadius(20)
        .padding()
        Spacer()
        
        Rectangle()
            .frame(height: 200)
            .foregroundColor(.green)
            .cornerRadius(30)
            .padding()
        Spacer()
        Text("MVVM is common in Swift (especially SwiftUI) because SwiftUI’s state management fits perfectly with the ViewModel concept. React also naturally uses an MVVM-like approach, where hooks act like ViewModels, separating logic from UI")
            .font(.title3)
            .padding()
        Spacer()
        Rectangle()
            .frame(height: 200)
            .foregroundColor(.green)
            .cornerRadius(30)
            .padding()
    }
}

#Preview {
    SwiftUIView()
}
