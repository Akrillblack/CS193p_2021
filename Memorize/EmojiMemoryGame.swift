//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Donatas on 18.10.21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🥎", "🎾", "🏉", "🏈", "⚽️", "🎱", "⚾️", "🏐", "🥏", "🛹", "🥌", "🏓", "🥊", "🎲", "🏂", "🪂"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 7) { pairIndex in
            emojis[pairIndex]
        }
    }
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card>{
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose (_ card: Card){
         model.choose(card)
    }
    
}

