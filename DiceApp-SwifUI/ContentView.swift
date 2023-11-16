//
//  ContentView.swift
//  DiceApp-SwifUI
//
//  Created by Maruf Khan on 16/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").resizable().edgesIgnoringSafeArea(.all).aspectRatio(contentMode: .fill)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 2)
                   
                }.padding(.all)
              Spacer()
                Button(
                    
                    action: {
                    
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


