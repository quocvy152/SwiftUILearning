//
//  Icons.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 29/7/24.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "square.and.arrow.up.on.square.fill")
            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .scaledToFill()
            .foregroundColor(Color("PrimaryColorApp"))
            .frame(width: 300, height: 300)
            .clipped()
    }
}

#Preview {
    Icons()
}
