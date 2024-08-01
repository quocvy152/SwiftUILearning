//
//  ScrollViewComponent.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 30/7/24.
//

import SwiftUI

struct ScrollViewComponent: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(0 ..< 50) { _ in
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 300, height: 300)
                }
            }
        })
        
        ScrollView(.vertical, showsIndicators: false, content: {
            LazyVStack {
                ForEach(0..<100) { _ in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(color: .red.opacity(0.3), radius: 10, x: 0, y: 5)
                                    .padding()
                            }
                        }
                    })
                }
            }
        })
    }
}

#Preview {
    ScrollViewComponent()
}
