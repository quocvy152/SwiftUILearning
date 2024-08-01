//
//  ShapesComponent.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 29/7/24.
//

import SwiftUI

struct ShapesComponent: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)  fill == forgeground
//            .stroke(
//                Color.green,
//                style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [20])
//            )
            .trim(from: 0.4, to: 1.0)
            .fill(Color.orange)
//            .stroke(Color.orange, lineWidth: 15)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .square, dash: [20]))
            .frame(width: 200, height: 100)
        
        RoundedRectangle(cornerRadius: 10)
    }
}

#Preview {
    ShapesComponent()
}
