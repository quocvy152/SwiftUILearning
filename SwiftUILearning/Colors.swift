//
//  Colors.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 29/7/24.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(
//                Color(  #colorLiteral(red: 0.3232288659, green: 0.6109997034, blue: 0, alpha: 1))
                Color("PrimaryColorApp")
            )
            .frame(width: 250, height: 150)
//            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .shadow(color: .cyan, radius: 30, x: 0, y: 0)
    }
}

#Preview {
    Colors()
}
