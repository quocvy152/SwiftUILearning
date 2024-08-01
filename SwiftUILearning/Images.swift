//
//  Images.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 30/7/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("sergiopham")
//            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
//            .foregroundColor(.blue)
            .resizable()
            .aspectRatio(contentMode: .fill)
//            .scaledToFill()
            .frame(width: 300, height: 300)
//            .clipped()
//            .cornerRadius(150)
            .clipShape(
//                /*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                Ellipse()
                  Circle()
            )
    }
}

#Preview {
    Images()
}
