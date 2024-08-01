//
//  ExtractedFuncLearning.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 1/8/24.
//

import SwiftUI

struct ExtractedFuncLearning: View {
    @State var backgroundColorScreen: Color = Color.yellow
    
    func buttonClickMe() {
        self.backgroundColorScreen = Color.pink
    }
    
    var buttonComponent: some View {
        Button(action: {
            buttonClickMe()
        }, label: {
            Text("Click me!")
                .padding(20)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .background(Color.black)
                .cornerRadius(10)
        })
    }
    
    var body: some View {
        ZStack {
            backgroundColorScreen
                .ignoresSafeArea()
            
            buttonComponent
        }
    }
}

#Preview {
    ExtractedFuncLearning()
}
