//
//  ContentView.swift
//  RollADice-SwiftUI
//
//  Created by Pathompong Phongsaporamut on 4/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDice = Int.random(in: 1...6)
    @State var rightDice = Int.random(in: 1...6)
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(number: leftDice)
                    DiceView(number: rightDice)
                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDice = Int.random(in: 1...6)
                    rightDice = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
            
    }
}

//MARK: - DiceView
struct DiceView: View {
    
    let number: Int
    
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
