//
//  TextComponent.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 29/7/24.
//

import SwiftUI

struct TextComponent: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/.lowercased())
            .italic()
            .strikethrough()
            .font(.system(size: 24, weight: .bold, design: .serif))

        Text("Phan Thi Van Anh & Pham Quoc Vy & Pham Phan Phu Quy".lowercased())
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.green)
            .baselineOffset(-20.0)
            // multilineTextAlignment: .leading -> left, trailing: -> right
            .kerning(10)
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            .frame(width: 250, height: 150, alignment: .center)
    }
}

#Preview {
    TextComponent()
}
