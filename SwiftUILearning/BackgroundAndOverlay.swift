//
//  BackgroundAndOverlay.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 30/7/24.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
//                    )
//                    .frame(width: 200, height: 200)
//            )
//            .background(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 250, height: 250)
//            )
        
//        Circle()
//            .fill(Color.orange)
//            .frame(width: 300, height: 300, alignment: .center)
//            .overlay(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150),
//                alignment: .bottom
//            )
//            .overlay(
//                Text("Sergio Pham")
//                    .font(.largeTitle)
//                    .foregroundColor(.yellow)
//            )
//            .background(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 310, height: 310)
//            )
        
//        Rectangle()
//            .fill(Color.orange)
//            .frame(width: 150, height: 150)
//            .overlay(
//                Rectangle()
//                    .frame(width: 100, height: 100)
//                    .overlay(
//                        Rectangle()
//                            .fill(Color.red)
//                            .frame(width: 50, height: 50)
//                    )
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.cyan)
//                    .frame(width: 200, height: 200)
//            )
        
//        Rectangle()
//            .fill(Color.red)
//            .frame(width: 50, height: 50)
//            .background(
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 150, height: 150)
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.cyan)
//                    .frame(width: 200, height: 200)
//            )
        
        Image(systemName: "sun.max.fill")
            .font(.system(size: 80))
            .foregroundColor(.yellow)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 120, height: 120)
                    .shadow(color: Color(#colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 0.298892798)), radius: 15, x: 25, y: 20)
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("20")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color(.orange), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
                            , alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundAndOverlay()
}
