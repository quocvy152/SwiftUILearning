//
//  Frames.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 30/7/24.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text("Sergio Pham, Hello IOS")
            .background(Color.blue)
            .frame(width: 200, height: 100, alignment: .center)
            .background(Color.green)
            .frame(width: 250)
            .background(Color.pink)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
            .frame(height: 200)
            .background(Color.cyan)
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottomTrailing)
            .background(Color.brown)
    }
}

#Preview {
    Frames()
}
