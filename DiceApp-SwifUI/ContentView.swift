//
//  ContentView.swift
//  DiceApp-SwifUI
//
//  Created by Maruf Khan on 16/11/23.
//

import SwiftUI

struct ContentView: View {
   @State var leftDiceNumber = 1
   @State var rightDiceNumber = 1
    var body: some View {
        ZStack {
            
            Image("background").resizable().edgesIgnoringSafeArea(.all).aspectRatio(contentMode: .fill)
           
            VStack {
                Spacer()
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                   
                }.padding(.all)
              Spacer()
                Button(
                    
                    action: {
                        
                        leftDiceNumber = Int.random(in: 1...6)
                        rightDiceNumber = Int.random(in: 1...6)
                    
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50)).fontWeight(.heavy).foregroundStyle(.white).padding(.horizontal)
                }
                    
                ).background(Color.red)
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}


