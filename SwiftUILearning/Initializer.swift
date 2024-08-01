//
//  Initializer.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 30/7/24.
//

import SwiftUI

struct Initializer: View {
    let title: String
    let primaryColor: Color
    let counter: Int
    
    init(title: Fruits, counter: Int) {
        self.counter = counter
        
        if title == Fruits.APPLE {
            self.title = "Apples"
            self.primaryColor = Color.red
        } else {
            self.title = "Oranges"
            self.primaryColor = Color.orange
        }
    }
    
    enum Fruits {
        case APPLE
        case ORANGE
    }
    
    var body: some View {
        VStack {
            Text("\(counter)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .underline()
            
            Text(title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
        .foregroundColor(.white)
        .padding(.all, 50)
        .background(primaryColor)
        .cornerRadius(20)
    }
}

#Preview {
    HStack {
        Initializer(title: .APPLE, counter: 100)
        Initializer(title: .ORANGE, counter: 20)
    }
}
