//
//  ForEach.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 30/7/24.
//

import SwiftUI

struct ForEach: View {
    let data: [String] = ["Hello", "Large", "Please"]
    
    var body: some View {
        VStack {
            ForEach(0..<10) { index in Text("Hello") }
        }
    }
}

#Preview {
    ForEach()
}
