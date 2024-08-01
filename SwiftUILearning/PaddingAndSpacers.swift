//
//  PaddingAndSpacers.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 30/7/24.
//

import SwiftUI

struct PaddingAndSpacers: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.yellow)
//            .padding(.all, 20)
//            .background(Color.gray)
        
        
        VStack(alignment: .leading) {
            Text("Chat GPT is great!")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 20)
            
            Text("This is description about Chat GPT, Chat GPT is genrated by Open AI in 2023, this is very helpful tool not only for developer but also for any people!")
        }
        .padding()
//        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color(.black).opacity(0.3), radius: 10, x: 0, y: 15)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingAndSpacers()
}
