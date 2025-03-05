//
//  SwiftUIView_Task2.swift
//  SwiftTestApp
//
//  Created by Luka Babunadze on 26.02.25.
//

import SwiftUI


struct Item: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
}

struct SwiftUIView_Task2: View {
    
    let products = [
        Item(name: "Apple", price: 20.30),
        Item(name: "Banana", price: 100.00),
        Item(name: "Kiwi", price: 2.00),
        Item(name: "Watermelon", price: 10.50),
    ]
    
    var body: some View {
            HStack{
                Text("Task 2!")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.leading, 16)
                Spacer()
                Circle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.green)
                    .padding(.trailing, 16)
            }
            .frame(height: 60)
            .background(.gray)
            .cornerRadius(20)
            .padding()
            Spacer()
            List(products){
                item in
                VStack{
                    HStack{
                        Rectangle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.green)
                            .cornerRadius(20)
                            .padding()
                        VStack{
                            Text("\(item.name)")
                                .font(.title)
                            Spacer()
                            Text("$50.00")
                                .font(.caption)
                                .fontWeight(.medium)
                        }
                        .padding(.vertical, 20)
                        .padding(.horizontal, 20)
                        Spacer()
                        Image(systemName: "arrowshape.forward")
                            .font(.system(size: 30))
                            .padding(.trailing, 16)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    .frame(height: 100)
                }
                .padding(.vertical, 20)
            }
            .frame(width: UIScreen.main.bounds.width * 1.1)
        Spacer()
    }
}

#Preview {
    SwiftUIView_Task2()
}
