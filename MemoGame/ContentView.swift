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
                CardView(card: card, numberOfPairs: self.emojiGame.pairs).onTapGesture {
                    self.emojiGame.choose(card: card)
                    }.aspectRatio(0.66, contentMode: .fit)
            }
        }.padding(10)
    }
}

struct CardView: View {
    var card: CardGame<String>.Card
    var numberOfPairs: Int
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10).foregroundColor(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke().fill(Color.orange)
                Text(card.content).font(numberOfPairs == 5 ? Font.title : Font.largeTitle)
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
