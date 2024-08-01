//
//  StateSwift.swift
//  SwiftUILearning
//
//  Created by Sergio Phạm  on 1/8/24.
//

import SwiftUI

struct ButtonWidget: View {
    var titleButton: String
    var iconName: String
    var buttonColor: Color
    var counter: Int
    var handleCounterAction: () -> Void
    
    var body: some View {
        Button(action: {
            handleCounterAction()
        }, label: {
            Image(systemName: iconName)
            Text(titleButton)
        })
        .fontWeight(/*@START_MENU_TOKEN@*/ .bold/*@END_MENU_TOKEN@*/)
        .foregroundColor(.white)
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(buttonColor)
        )

    }
}

struct StateSwift: View {
    @State var counter: Int = 0;
    @State var backgroundColorScreen: Color = Color.gray;
    
    enum ACTION {
        case DECREASE
        case INCREASE
        case RESET
        case CHANGE_BG
    }
    
    func handleCounter(currCounter: Int, type: ACTION) {
        switch type {
            case ACTION.DECREASE:
                if currCounter == 0 {
                    self.counter = 0
                } else {
                    self.counter = currCounter - 1
                }
                break
            case ACTION.INCREASE:
                self.counter += 1
                break
            case ACTION.RESET:
                self.counter = 0
                self.backgroundColorScreen = Color.gray
                break
            case ACTION.CHANGE_BG:
                self.backgroundColorScreen = Color.pink
                break
        }
    }
    
    var body: some View {
        ZStack {
            backgroundColorScreen
                .ignoresSafeArea()

            VStack(spacing: nil, content: {
                Text("This is small feature!")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Text("Current count: \(counter)")

                HStack(spacing: 25) {
                    ButtonWidget(
                        titleButton: "Decrease",
                        iconName: "minus",
                        buttonColor: Color.red,
                        counter: counter,
                        handleCounterAction: {
                            handleCounter(currCounter: counter, type: ACTION.DECREASE)
                        }
                    )
                    
                    ButtonWidget(
                        titleButton: "Increase",
                        iconName: "plus",
                        buttonColor: Color.green,
                        counter: counter,
                        handleCounterAction: {
                            handleCounter(currCounter: counter, type: ACTION.INCREASE)
                        }
                    )
                }
                .padding(.top, 20)
                
                HStack(spacing: 25) {
                    ButtonWidget(
                        titleButton: "Reset",
                        iconName: "wake.circle",
                        buttonColor: Color.cyan,
                        counter: counter,
                        handleCounterAction: {
                            handleCounter(currCounter: counter, type: ACTION.RESET)
                        }
                    )
                    
                    ButtonWidget(
                        titleButton: "Change BG",
                        iconName: "dot.circle.and.hand.point.up.left.fill",
                        buttonColor: Color.orange,
                        counter: counter,
                        handleCounterAction: {
                            handleCounter(currCounter: counter, type: ACTION.CHANGE_BG)
                        }
                    )
                }
                .padding(.top, 20)
            })
        }
    }
}

#Preview {
    StateSwift()
}
