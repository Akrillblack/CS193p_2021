//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Donatas on 12.10.21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
