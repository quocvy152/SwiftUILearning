//
//  GridLayout.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 30/7/24.
//

import SwiftUI

struct GridLayout: View {
    let gridColumns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.cyan)
                .frame(height: 250)
            
            LazyVGrid(
                columns: gridColumns, 
                alignment: .center,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(
                        header: Text("Phần Cuộn 1")
                            .padding(.all, 5)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                            .background(Color.gray)
                            .foregroundColor(.white),
                        content: {
                            ForEach(0..<50) { _ in
                                Rectangle()
                                    .fill(Color.orange)
                                    .frame(height:100)
                            }
                        }
                    )
                    
                    Section(
                        header: Text("Phần Cuộn 2")
                            .padding(.all, 5)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                            .background(Color.blue)
                            .foregroundColor(.white),
                        content: {
                            ForEach(0..<50) { _ in
                                Rectangle()
                                    .fill(Color.green)
                                    .frame(height:100)
                            }
                        }
                    )
                }
            )
        }
    }
}

#Preview {
    GridLayout()
}
