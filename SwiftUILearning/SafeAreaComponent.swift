//
//  SafeAreaComponent.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 31/7/24.
//

import SwiftUI

struct SafeAreaComponent: View {
    var body: some View {
//        ZStack {
//
//            VStack {
//                Text("Hello World")
//                Spacer()
//            }
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
//            .background(Color("PrimaryColorApp"))
//        }
        
        ScrollView {
            VStack(alignment: .leading, content: {
                Text("Title Post!")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
                
                ForEach(0..<100) { _ in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(height: 150)
                        .padding(15)
                        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 10)
                }
            })
            .background(Color.yellow)
        }
//        .background(
//            Color.red
//                .ignoresSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//        )
//        .background(Color.yellow)
    }
}

#Preview {
    SafeAreaComponent()
}
