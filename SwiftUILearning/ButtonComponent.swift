//
//  ButtonComponent.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 31/7/24.
//

import SwiftUI

struct ButtonComponent: View {
    @State var title: String = "This is title"
    
    var body: some View {
        VStack {
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Button("Click me") {
                self.title = "Button was pressed"
            }
            .accentColor(.orange)
            
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text("Confirm")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .padding(.horizontal, 15)
                    .background(
                        Color.green
                            .cornerRadius(10)
                            .shadow(color: Color.gray.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            })
            
            Button(action: {
                self.title = "Button #3 was pressed"
            }, label: {
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .shadow(color: Color.gray.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(content: {
                        VStack {
                            Image(systemName: "gamecontroller.fill")
                                .foregroundColor(.white)
                            
                            Text("Play now")
                                .foregroundColor(.white)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .padding(.top, 8)
                        }
                    })
            })
            .padding(.top, 50)
            
            Button(action: {
                self.title = "Button #4 was pressed"
            }, label: {
                Text("Button 4")
                    .foregroundColor(.white)
                    .padding(.vertical, 15)
                    .padding(.horizontal, 20)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.orange)
                    )
            })
        }
    }
}

#Preview {
    ButtonComponent()
}
