//
//  Gradients.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 29/7/24.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)), Color.blue, Color(#colorLiteral(red: 0.5808190107, green: 0.0884276256, blue: 0.3186392188, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                
                RadialGradient(colors: [Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))], center: .topLeading, startRadius: 50, endRadius: 150)
                
//                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, angle: .degrees(180))
            )
            .frame(width: 300, height: 200)
            
    }
}

#Preview {
    Gradients()
}
