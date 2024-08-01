//
//  ForEachLearning.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 30/7/24.
//

import SwiftUI

struct ForEachLearning: View {
    let data: [String] = ["Hello", "World", "Please"]

    var body: some View {
//        ForEach(0..<5) { index in Text("Index: \(index)") }

//        ForEach(data.indices) { index in Text("\(data[index]): \(index)") }

        ForEach(0 ..< 10) { index in
            Circle()
                .fill(Color.orange)
        }
    }
}

#Preview {
    ForEachLearning()
}
