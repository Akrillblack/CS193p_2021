//
//  MemoryGame.swift
//  Memorize
//
//  Created by Donatas on 18.10.21.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<MemoryGame.Card>
    
    func choose (_ card: Card) {
        let chosenIndex = index(of: card)
        var chosenCard = cards[chosenIndex]
        chosenCard.isFaceUp.toggle()
        print("card \(chosenCard)")
    }
    
    func index (of card: Card) -> Int {
        for index in 0..<cards.count{
            if cards[index].id == card.id{
                return index
            }
        }
        return 0 //bogus
    }
    
    init (numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
