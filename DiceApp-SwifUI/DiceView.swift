//
//  DiceView.swift
//  DiceApp-SwifUI
//
//  Created by Maruf Khan on 16/11/23.
//

import SwiftUI

struct DiceView: View {
    let n: Int
    var body: some View {
        Image( "dice\(n)").resizable().aspectRatio(1, contentMode: .fit).padding(.all).frame(height: 180)
    }
}

#Preview {
    DiceView(n: 1)
}
