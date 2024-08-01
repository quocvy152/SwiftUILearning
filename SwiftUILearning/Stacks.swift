//
//  Stacks.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 30/7/24.
//

import SwiftUI

struct Stacks: View {
    // VStacks -> Vertical
    // HStacks -> Horizantal
    // ZStacks -> zIndex (back to front)
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color("PrimaryColorApp"))
                .frame(width: 350, height: 500)
                
            VStack(alignment: .leading, spacing: 40) {
                Rectangle()
                    .fill(Color.pink)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, spacing: 30) {
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 80, height: 80)
                    
                    Rectangle()
                        .fill(Color.brown)
                        .frame(width: 60, height: 60)
                    
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 30, height: 30)
                }
                .background(Color.cyan)
            }
            .background(Color.orange)
        }
        
        HStack(spacing: 20) {
            Text("Current item in cart")
            
            Text("10")
                .font(.title)
                .underline()
        }
    }
}

#Preview {
    Stacks()
}
