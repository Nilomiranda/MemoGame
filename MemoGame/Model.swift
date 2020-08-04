//
//  Model.swift
//  MemoGame
//
//  Created by Danilo Miranda on 03/08/20.
//  Copyright © 2020 Danilo Miranda. All rights reserved.
//

import Foundation

// We will create a card game of strings -> CardGame<String>
// CardContent -> Type of content that the card will hold. Can be String, Int...
struct CardGame<CardContent> {
    var cards: Array<Card>
    
    func chooseCard(card: Card) {
        var chosenCard = card
        print("Chosen card \(chosenCard.content)")
        
        chosenCard.isFaceUp = true
    }
    
    init(numberOfPairsOfCards: Int, contentFactory: (Int) -> CardContent) {
        cards = []
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = contentFactory(pairIndex)
            
            // append two cards (a pair) to the array of cards
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        
        var id: Int
    }
}
