//
//  ContentView.swift
//  MemoGame
//
//  Created by Danilo Miranda on 01/08/20.
//  Copyright © 2020 Danilo Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var emojiGame: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(emojiGame.cards) { card in
                CardView(card: card)
            }
        }.padding(10)
    }
}

struct CardView: View {
    var card: CardGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10).foregroundColor(Color.white)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10).foregroundColor(Color.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(emojiGame: EmojiMemoryGame())
    }
}
