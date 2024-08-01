//
//  Spacers.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 30/7/24.
//

import SwiftUI

struct Spacers: View {
    var body: some View {
//        HStack(spacing: 0) {
//            Spacer()
//                .frame(height: 10)
////                .background(Color.gray)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//            
//            Spacer(minLength: 50)
//                .frame(height: 10)
////                .background(Color.gray)
//            
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
////                .background(Color.gray)
//            
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
////                .background(Color.gray)
//        }
//        .background(Color.blue)
//        .padding(.horizontal, 100)
        
        VStack {
            HStack {
                Image(systemName: "arrowshape.backward.fill")
                
                Spacer()
                    
                Image(systemName: "xmark.circle")
            }
            .font(.title2)
            .padding(.horizontal, 5)
            
            Spacer()
            
            Rectangle()
                .fill(Color.accentColor)
                .frame(width: .infinity, height: 50)
        }
    }
}

#Preview {
    Spacers()
}
